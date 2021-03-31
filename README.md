![License: CC-BY](https://img.shields.io/badge/licence-CC--BY-green.svg)
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)

# The repository tfc-khmer-epigraphy
This repository assembles data produced by the project Corpus des inscriptions khmères (before and during the DHARMA project).

## Encoding log
We maintain in .md format an encoding log that can be viewed through
[https://github.com/erc-dharma/tfc-khmer-epigraphy/blob/master/texts/CIK_encoding_log.md](https://github.com/erc-dharma/tfc-khmer-epigraphy/blob/master/texts/CIK_encoding_log.md).

## Repository Static page
You can consult the current state of the work on this repository at https://erc-dharma.github.io/tfc-khmer-epigraphy/.

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

## Help and Guides
* A Guide for Git is provided in the [project documentation repository](https://github.com/erc-dharma/project-documentation) at [DHARMA_Git_guide_v01.md](https://github.com/erc-dharma/project-documentation/blob/master/guides/git/DHARMA_git_guide_v01.md)
* DHARMA encoding guide is available under [encoding-diplomatic](https://github.com/erc-dharma/project-documentation/tree/master/guides/encoding-diplomatic), but we recommend you to use the [google doc version](https://docs.google.com/document/d/1hjWrrwRZQp4hmEqw4jBhhqoXdwJvRlw3EWboJteOPw0/edit?usp=sharing) to access the latest edits.
* Encoding templates are also provided under [templates](https://github.com/erc-dharma/project-documentation/tree/master/templates)
* Feel free to use issues to ask questions to other members of the project. To Get started with issue, see the  [guide](https://github.com/erc-dharma/project-documentation/tree/master/guides/github-issuetracker).

## Validation
All DHARMA XML are validated against Epidoc schema in its latest version as well as against DHARMA ones.
You can declare those schemas in the processing instructions of every XML files. To use it with Oxygen, you might need to change the default configuration.
In the toolbar, go to the `Options > Preferences`, a window will open, select `XML > XML Parser > RelaxNG`. The check box for "Add default attributes values" must be unchecked. Click on Apply. You might need to restart Oxygen for it to be taken into account.

* DHARMA validation schemas
  - a RelaxNG with embedded Schematron code is available [here](https://github.com/erc-dharma/project-documentation/blob/master/schema/latest/DHARMA_Schema.rng).
  - a Schematron with embedded Schematron Quick Fixes to complete the first schema is available [here](https://github.com/erc-dharma/project-documentation/blob/master/schema/latest/DHARMA_Schema.rng)
*Note that both schemas are needed to a complete validation of DHARMA encoding rules*

If you use an online validation processing, the processing instructions should be as followed
```
<?xml-model href="https://raw.githubusercontent.com/erc-dharma/project-documentation/master/schema/latest/DHARMA_Schema.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="https://raw.githubusercontent.com/erc-dharma/project-documentation/master/schema/latest/DHARMA_Schema.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>
<?xml-model href="https://raw.githubusercontent.com/erc-dharma/project-documentation/master/schema/latest/DHARMA_SQF.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>
<?xml-model href="http://www.stoa.org/epidoc/schema/latest/tei-epidoc.rng" schematypens="http://relaxng.org/ns/structure/1.0"?>
<?xml-model href="http://www.stoa.org/epidoc/schema/latest/tei-epidoc.rng" schematypens="http://purl.oclc.org/dsdl/schematron"?>

```
However, if you need to do it locally, you can access all DHARMA RelexNG and Schematron in their latest version in the projection-documentation repository under [schema/latest](https://github.com/erc-dharma/project-documentation/tree/master/schema/latest). In this case, you will need to update the `@href` and provide the path between you current file and the schema itself (either as a standalone file or either as a part of the project-documentation repository if you have cloned it)

## Workflow
- Before working with this repository, make sure you always the latest version through a `git pull`
- Create a XML file or edit an existing one.
- Once, you are done use git to add, commit and push it on the repository.
- Once you have done your `git push`, the XML files are validated against the Epidoc and Dharma RelaxNG with a CI service called Travis. This process is made possible with the existing `.travis.yml` file. **Do not delete or modify this file on your own.** You can access the resulting log [here](https://travis-ci.com/github/erc-dharma/tfc-khmer-epigraphy)
- On the `git push`, we are also using github Actions service to transforme automatically the XML into a HTML version. We are using Ant in a java environment to do this batch transformation. The steps are declare in the `build.xml file`, while the automated scenario is provided under `.github/workflows/editorial.yml` **Do not delete or modify those files on your own.**
  - Step 1: it will editorially edit all the XMLs in the repository.
  - Step 2: from those edited XMLs, it will create a HTML output and retrieve Zotero data as well.
  - Step 3: it will push those files in the repository under `editedxml` and `htmloutput` folders.
  - Step 4: to access those newly created files, make a `git pull`
  - Step 5: all the HTML are available as a static website thanks to GitHub pages service. Note that the README is the by default page if no XMLs are stored in the repository: https://erc-dharma.github.io/tfc-khmer-epigraphy/

*Please note that this process can break easily and requires high quality data*. The content log of the pipeline are available under [Actions tab](https://github.com/erc-dharma/tfc-khmer-epigraphy/actions) of the repository, if you need to find the reason behind an error.

![DHARMA XML workflow](https://github.com/erc-dharma/project-documentation/blob/master/guides/images/DHARMA_XMLWorkflow_v02.png)

## License & Attribution
All the edited XML files of this repository are available under the [Creative Commons CC-BY 4.0 License](https://creativecommons.org/licenses/by/4.0/), meaning you are free to use it for any purpose, commercial or non-commercial! However, we ask you to mention the project name, funder as well as the members involved in the XML edition of the inscriptions. Feel free to contact the project for more infos at `ercdharma@gmail.com`.

## Contributing to this repository
**Thanks for your interest in contributing!** Currently only members of the project are allowed to contribute to this repository. Contact the researchers in charge of this corpus if you are interested in working with them.
