# Khmer-Epigraphy
This repository assembles data produced by the project Corpus des inscriptions khmères. __Beware that this repository will soon become a subrepository of erc-dharma which will require some new operations by all collaborators.__

## Basic GIT guidance

See <https://training.github.com/kit/downloads/fr/github-git-cheat-sheet.pdf>

### Things you always need to do:
### Commands Lines Users
+ Open Terminal.app.
  * If it isn't in your Dock yet, find it under Applications/Utilities.
  * You communicate with this application by UNIX commands.
      + For generalities on UNIX commands, see <http://mally.stanford.edu/~sr/computing/basic-unix.html>.
+ Then make sure you are in your proper working directory.
  * If you don't know where you are, use `pwd`.
  * To navigate between folders with the Terminal, use command such as
      + cd to change your working folder (`cd ..` allows you to return in the parent level folder while `cd folderName1/folderName2 allow to jump directly into folderName2 in one command line).
      + if you are lost in your folders, use `pwd`, it will give you your position.
   * type the key TAB once you’ve filled in 3 or 4 of the first letters of a directory name: Terminal will fill in the rest if there’s no other directory beginning with the same letters.
+ Once you’re there, type the following command followed by ENTER:
  * `git pull`
      + do this every time you start working, to get most recent version
+ Once you start making edits to file, you can use
  * `git add -A` or `git add nameOfYourFile'
      + use this every time you end a working session if you have made any changes needing to be recorded
      + makes __all__ files from your copy of the repository ready to be committed
      + so this is a shortcut avoiding the need to type every filename per changed file after `git add`
  * `git commit -m "message describing last changes"`
      + this needs to be done at the end of every working session if you have made any changes needing to be recorded
  * `git push`
      + this needs to be done if you have done `git commit`, for others to get your changes with a `pull`
  * `git checkout -f`
      + this helps to get out of the problem ‘Your local changes to the following files would be overwritten by merge’
      + do `git pull` after this    

### Desktop Users
+ Open the Github Desktop
  * If it isn't in your Dock yet, find it under Applications
+ Make sure you are in the right repository under "Current repository".
+ Be sure the Desktop has fetched the changes that could have been made in Github repository online under "Fetch Origin"
+ Once you start making edits
  * They will pill up under "Changes"
      + Write your commit message
      + Click the "Commit to master" button
      + Click on "Pull Origin"
