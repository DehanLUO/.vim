# Fugitive.vim cheat sheet

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Fugitive.vim cheat sheet](#fugitivevim-cheat-sheet)
  - [Commands](#commands)

<!-- /code_chunk_output -->

## General commands

| git                     | fugitive             | action                                                                                |
| ----------------------- | -------------------- | ------------------------------------------------------------------------------------- |
| :Git add %              | :Gwrite              | Write the current buffer's path and stage the results to the index                    |
| :Git checkout %         | :Gread               | Revert current file to last checked in version                                        |
| :Git rm %               | :GRemove             | Delete the current file and clean the corresponding Vim buffer                        |
| :Git mv % {destination} | :GMove {destination} | Rename the current file and the corresponding Vim buffer                              |
| :Git commit             | -                    | Eidt the commit message                                                               |
| :[range]Git blame       | -                    | Git-blame on the current file and open the results in a a scroll-bound vertical split |

> `%` stands for the current file name.

## Working with the git index
