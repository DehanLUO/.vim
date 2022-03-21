# Vim configuration primer plus

<p align="center">
To Katherine, with Love.
</p>

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Vim configuration primer plus](#vim-configuration-primer-plus)
  - [Prerequisites](#prerequisites)
  - [Quick Start](#quick-start)
  - [Shortcuts](#shortcuts)
  - [Features](#features)
  - [Q&A](#qa)
    - [Enable italic fonts in iTerms2](#enable-italic-fonts-in-iterms2)
  - [Cheat sheet](#cheat-sheet)

<!-- /code_chunk_output -->

## Prerequisites

- Install nodejs ≥ 12.12 for [Conquer of Completion](https://github.com/neoclide/coc.nvim#quick-start)

  ```bash
  brew install node
  ```

## Quick Start

## Shortcuts

| Key combination         | Action                                                                                |    Source     | Norm | Sel | Vis | Opr | Ins |
| ----------------------- | ------------------------------------------------------------------------------------- | :-----------: | :--: | :-: | :-: | :-: | :-: |
| `s`+`h`/`j`/`k`/`l`     | Put the new window left/bottom/top/right of the current one                           |      vim      |  √   |  √  |  √  |  √  |  -  |
| [N] `\`+`h`/`j`/`k`/`l` | Go to the Nth left/down/up/right window                                               |      vim      |  √   |  √  |  √  |  √  |  -  |
| `\`+`H`/`J`/`K`/`L`     | Move the current window to the far left/bottom/top/right                              |      vim      |  √   |  √  |  √  |  √  |  -  |
| `\`+`w`+`w`             | Move the cursor to the next window                                                    |      vim      |  √   |  √  |  √  |  √  |  -  |
| `\`+`w`+`q`             | Close the current window                                                              |      vim      |  √   |  √  |  √  |  √  |  -  |
| `\`+`←`/`↓`/`↑`/`→`     | Resize the current window                                                             |      vim      |  √   |  √  |  √  |  √  |  -  |
| `/`+`/`                 | Stop the highlighting for a previous search pattern                                   |      vim      |  √   |  -  |  -  |  -  |  -  |
| `\`+`v`+`e`             | Edit the initialization commands                                                      |      vim      |  √   |  -  |  -  |  -  |  -  |
| `\`+`v`+`r`             | Re-source the initialization commands                                                 |      vim      |  √   |  -  |  -  |  -  |  -  |
| `Command`+`x`/`c`       | Cut/Copy from MacVim to system clipboard                                              |      vim      |  -   |  -  |  √  |  -  |  -  |
| `r`                     | Compile                                                                               |      vim      |  √   |  -  |  -  |  -  |  -  |
| `Ctrl`+`u`              | Delete the text you’ve typed in the current line                                      |      vim      |  -   |  -  |  -  |  -  |  √  |
| `Ctrl`+`w`              | Delete the word before the cursor                                                     |      vim      |  -   |  -  |  -  |  -  |  √  |
| `\`+`s`+`t`+`w`         | Strip tailing whitespacee                                                             |      vim      |  -   |  -  |  √  |  -  |  -  |
| `Command`+`[`/`]`       | Emulate shift left/right key commands from MacOS Notes                                |      vim      |  √   |  -  |  √  |  -  |  -  |
| `[`/`]`+`q`             | Move to the previous/next item in the quickfix list                                   |      vim      |  √   |  -  |  -  |  -  |  -  |
| `[`/`]`+`Q`             | Move to the first/last item in the quickfix list                                      |      vim      |  √   |  -  |  -  |  -  |  -  |
| `{`/`}`+`q`             | Move to the previous/next item in the location list                                   |      vim      |  √   |  -  |  -  |  -  |  -  |
| `{`/`}`+`Q`             | Move to the first/last item in the location list                                      |      vim      |  √   |  -  |  -  |  -  |  -  |
| `Tab`/`Shift+Tab`       | Trigger completion with characters forward/backward                                   |      coc      |  √   |  √  |  √  |  √  |  -  |
| `Ctrl+Space`            | Trigger completion                                                                    |      coc      |  √   |  √  |  √  |  √  |  -  |
| `Enter`                 | Auto-complete after a completion is confirmed                                         |      coc      |  √   |  √  |  √  |  √  |  -  |
| `[`/`]`+`g`             | Jump to next/previous diagnostic position                                             |      coc      |  √   |  -  |  -  |  -  |  -  |
| `g`+`d`                 | Jump to definition(s) of current symbol by invoke                                     |      coc      |  √   |  -  |  -  |  -  |  -  |
| `g`+`y`                 | Jump to type definition(s) of current symbol by invoke                                |      coc      |  √   |  -  |  -  |  -  |  -  |
| `g`+`i`                 | Jump to implementation(s) of current symbol by invoke                                 |      coc      |  √   |  -  |  -  |  -  |  -  |
| `g`+`r`                 | Jump to references(s) of current symbol by invoke                                     |      coc      |  √   |  -  |  -  |  -  |  -  |
| `K`                     | Show documentation in preview window                                                  |      coc      |  √   |  -  |  -  |  -  |  -  |
| `\`+`r`+`m`             | Rename symbol under cursor to a new word by invoke                                    |      coc      |  √   |  -  |  -  |  -  |  -  |
| `\`+`f`                 | Format selected range                                                                 |      coc      |  √   |  -  |  √  |  -  |  -  |
| `\`+`a`                 | {==Get and run code action(s) with the selected region==}{>>What are code actions?<<} |      coc      |  √   |  -  |  √  |  -  |  -  |
| `\`+`a`+`c`             | ==Get and run code action(s) with the current file==                                  |      coc      |  √   |  -  |  -  |  -  |  -  |
| `\`+`q`+`f`             | ==Try first quickfix action for diagnostics of current line==                         |      coc      |  √   |  -  |  -  |  -  |  -  |
| `\`+`c`+`l`             | ==Do command from codeLens of current line==                                          |      coc      |  √   |  -  |  -  |  -  |  -  |
| `i`/`a`+`f`             | Select inside/around function                                                         |      coc      |  -   |  -  |  √  |  √  |  -  |
| `i`/`a`+`c`             | Select inside/around class/struct/interface                                           |      coc      |  -   |  -  |  √  |  √  |  -  |
| `Ctrl`+`s`              | Select next selection range                                                           |      coc      |  -   |  -  |  √  |  √  |  -  |
| `Space`+`a`             | Show all diagnostics for the workspace                                                |      coc      |  √   |  -  |  -  |  -  |  -  |
| `Space`+`e`             | Manage coc extensions                                                                 |      coc      |  √   |  -  |  -  |  -  |  -  |
| `Space`+`m`             | Show coc extension marketplace                                                        |      coc      |  √   |  -  |  -  |  -  |  -  |
| `Space`+`c`             | Show all workspace commands                                                           |      coc      |  √   |  -  |  -  |  -  |  -  |
| `Space`+`o`             | Show symbols in the current document                                                  |      coc      |  √   |  -  |  -  |  -  |  -  |
| `Space`+`s`             | Search workspace symbols                                                              |      coc      |  √   |  -  |  -  |  -  |  -  |
| `\`+`p`+`c`             | Pick a different color for current document symbol                                    | coc-highlight |  √   |  -  |  -  |  -  |  -  |
| `\`+`g`+`f`             | Fold all unchanged lines. Excute again to undo                                        | vim-gitgutter |  √   |  -  |  -  |  -  |  -  |
| `\`+`g`+`q`+`f`         | Load all hunks into the quickfix list                                                 | vim-gitgutter |  √   |  -  |  -  |  -  |  -  |
| `\`+`g`+`s`             | Open an interactive buffer showing the status of the files in your working directory  | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `c`+`c`                 | [fugitive status] Create a commit                                                     | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `c`+`r`+`c`             | [fugitive status] Revert the commit under the cursor                                  | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `-`                     | [fugitive status] Stage or unstage the file under the cursor                          | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `g`+`q`                 | [fugitive status] Quit the status buffer                                              | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `\`+`g`+`d`             | Diff against any and all direct ancestors, retaining focus on the current window      | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `[`/`]`+`c`             | [fugitive diff/conflict] Jump to the previous/next start of a change                  | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `d`+`o`                 | [fugitive diff] Obtain diff from another buffer to the current buffer                 | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `d`+`p`                 | [fugitive diff] Put diff from another buffer to thr current buffer                    | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `c`+`o`+`h`/`l`         | [fugitive conflict] Obtain the target/merge branch to the working copy                | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `c`+`p`                 | [fugitive conflict] Modify the working copy with the current buffer                   | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `\`+`g`+`b`             | Git blame on the current file                                                         | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| `\`+`g`+`q`             | Close all of the windows apart from the working copy                                  | vim-fugitive  |  √   |  -  |  -  |  -  |  -  |
| Key combination         | Action                                                                                |    Source     | Norm | Sel | Vis | Opr | Ins |

## Features

- [ ] IDE for C++
- [ ] IDE for LaTeX

## Q&A

### Enable italic fonts in iTerms2

1. In order to see italicised text at all, we need a typeface with a italic variant.
   I like [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts),
   which is available via [Homebrew Cask Fonts](https://github.com/Homebrew/homebrew-cask-fonts) on MacOS.

   ```shell
   brew tap homebrew/cask-fonts
   brew install --cask font-hack-nerd-font
   ```

   Set fonts at `Preferences` > `Profiles` > `Text` > `Fonts`.
   Make sure **the italics built in is enabled** in the terminal profile as well.

2. Tell the terminal what italic actually means.
   Process and add `./cfg/xterm-256color-italic.terminfo` to the term database.

   ```shell
   tic ./cfg/xterm-256color-italic.terminfo
   ```

3. Type **xterm-256color-italic** in `Preferences` > `Profiles` > `Terminal` > `Report Terminal Type:` to active this new term

## Cheat sheet

- [Markdown-preview-enhanced](./doc/markdown-preview-enhanced.md)

- [Fugitive.vim](./doc/fugitive.md)
