# The repository tfc-khmer-epigraphy
This repository assembles data produced by the project Corpus des inscriptions khmères (before and during the DHARMA project).

## Encoding log
We maintain in .md format an encoding log that can be viewed through 
[https://github.com/erc-dharma/tfc-khmer-epigraphy/blob/master/texts/CIK_encoding_log.md](https://github.com/erc-dharma/tfc-khmer-epigraphy/blob/master/texts/CIK_encoding_log.md). 
## Encoding intellectual authorship
- indicate only the name of the original editor if no verification against the stone/estampage has been possible at any stage between the original printed edition and your digital edition
- indicate only your name if you are responsible both for encoding and for a thoroughly revised reading of the text: if you can honestly claim to have done a more thorough job than your predecessor, even if the difference in terms of meaning of the text is minimal
- indicate both the original editor’s name and your name in case of doubt
- indicate Dominic’s, Dominique’s or Arlo's name if you are using a txt file that records a revised edition by one of us, and leave away the name of the original editor if the same condition applies to the relevant person among us as the one applying to you in the second bullet point above
- leave away your own ONLY if you are really doing no more than applying xml tags and you are not verifying against an estampage (but in principle, this should only happen when no reproduction can be obtained)

## Basic GIT guidance

See <https://training.github.com/kit/downloads/fr/github-git-cheat-sheet.pdf>

### Things you always need to do
#### Command Line (Terminal.app) Users
+ Open Terminal.app.
  * If it isn't in your Dock yet, find it under Applications/Utilities.
  * You communicate with this application by UNIX commands, also called "command line".
      + For generalities on UNIX commands, see <http://mally.stanford.edu/~sr/computing/basic-unix.html>.
+ Then make sure you are in your proper working directory.
  * If you don't know where you are, use `pwd`.
  * To navigate between folders with the Terminal, use command such as
      + cd to change your working folder (`cd ..` allows you to return in the parent level folder while `cd folderName1/folderName2` allow to jump directly into folderName2 in one command line).
      + if you are lost in your folders, use `pwd`, it will give you your position.
   * type the key TAB once you’ve filled in 3 or 4 of the first letters of a directory name: Terminal will fill in the rest if there’s no other directory beginning with the same letters.
+ Once you’re there, type the following command followed by ENTER:
  * `git pull`
      + do this every time you start working, to get most recent version
      + also do it every time you are going to do the following steps
+ Once you start making edits to file, you can use
  * `git add -A`
      + use this every time you end a working session if you have made any changes needing to be recorded
      + makes __all__ files from your copy of the repository ready to be committed
      + so this is a shortcut avoiding the need to type every filename per changed file after `git add`
  * `git commit -m "message describing last changes"`
      + this needs to be done at the end of every working session if you have made any changes needing to be recorded
  * `git push`
      + this needs to be done if you have done `git commit`, for others to get your changes with a `pull`
  * `git checkout -f`
      + this helps to get out of the problem ‘Your local changes to the following files would be overwritten by merge'
      + do `git pull` after this    

### If your regular command line screen suddenly changes
+ This may happen if you forget to type `-m "..."` during a `git commit`, or if you forget to do a `git pull` before a `git add git commit`.
+ __Don't do anything else than this__: type `:q` and `ENTER`
+ It will allow you to quit the strange screen and return to the normal command line screen

#### Desktop Users
+ Open the Github Desktop
  * If it isn't in your Dock yet, find it under Applications
+ Make sure you are in the right repository under "Current repository".
+ Be sure the Desktop has fetched the changes that could have been made in Github repository online under "Fetch Origin"
+ Once you start making edits
  * They will pill up under "Changes"
      + Write your commit message
      + Click the "Commit to master" button
      + Click on "Pull Origin"
