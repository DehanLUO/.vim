# Fugitive.vim cheat sheet

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Fugitive.vim cheat sheet](#fugitivevim-cheat-sheet)
  - [General commands](#general-commands)
  - [Working with the git index](#working-with-the-git-index)
    - [fugitive-staging maps](#fugitive-staging-maps)
    - [Gdiffsplit maps](#gdiffsplit-maps)
  - [Resolving merge conflicts with vimdiff](#resolving-merge-conflicts-with-vimdiff)
  - [Browsing the gii object database](#browsing-the-gii-object-database)

<!-- /code_chunk_output -->

## General commands

| git                    | fugitive             | action                                                                                |
| ---------------------- | -------------------- | ------------------------------------------------------------------------------------- |
| git add %              | :Gwrite              | Write the current buffer's path and stage the results to the index                    |
| git checkout %         | :Gread               | Revert current file to last checked in version                                        |
| git rm %               | :GRemove             | Delete the current file and clean the corresponding Vim buffer                        |
| git mv % {destination} | :GMove {destination} | Rename the current file and the corresponding Vim buffer                              |
| git commit             | :Git commit          | Edit the commit message                                                               |
| git blame %            | :[range]Git blame    | Git-blame on the current file and open the results in a a scroll-bound vertical split |

> `%` stands for the current file name.

## Working with the git index

| git        | fugitive    | action                                                                                                |
| ---------- | ----------- | ----------------------------------------------------------------------------------------------------- |
| git status | :Git!       | Open an interactive fugitive-summary buffer showing the status of the files in your working directory |
| git diff % | :Gdiffsplit | Split the window and allow you to compare the working copy with branch and index                      |

### fugitive-staging maps

| map | action                                      |
| :-: | ------------------------------------------- |
| `-` | Stage or unstage the file under the cursor  |
| `C` | Open the commit containing the current file |

### Gdiffsplit maps

|   map/command   | action                                                           |
| :-------------: | ---------------------------------------------------------------- |
|   `[`/`]`+`c`   | Jump to the previous/next start of a change                      |
|     `d`+`o`     | Obtain diff from another buffer to the current buffer            |
|     `d`+`p`     | put diff from the current buffer to another buffer               |
| :[range]diffget | Modify the current buffer to undo difference with another buffer |
| :[range]diffput | Modify another buffer to undo difference with the current buffer |

## Resolving merge conflicts with vimdiff

|       map/command        | action                                                                                                                                      |
| :----------------------: | ------------------------------------------------------------------------------------------------------------------------------------------- |
|      :Gvdiffsplit!       | Split vertically, remaining focus on the working copy, and diff against <br> the target branch on the left while merge branche on the right |
|       `[`/`]`+`c`        | Jump to the previous/next start of a change                                                                                                 |
|       :diffget //2       | Modify the current buffer to undo difference with the target branch on the left                                                             |
|       :diffget //3       | Modify the current buffer to undo difference with the merge branch on the right                                                             |
|       :diffupdate        | To force the differences to be updated                                                                                                      |
| :diffput 1 \| diffupdate | Modify the working copy with the current buffer, and update the difference                                                                  |
|          :only           | Close all of the windows apart from the working copy                                                                                        |

## Browsing the gii object database

|            map/command             | action                                                       |
| :--------------------------------: | ------------------------------------------------------------ |
|            :Gedit [SHA]            | Open an interactive buffer containing a blob/tree/commit/tag |
|  :Gedit [BranchName:path/to/file]  | Edit a file at the specific branch                           |
| :Gvsplit [BranchName:path/to/file] | Split vertically, and show the file at the specific branch   |

## Exploring the history of a git repository
