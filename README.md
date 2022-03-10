# Vim configuration primer plus {ignore=true}

<p align="center">
To Katherine, with Love.
</p>

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [****Prerequisites****](#prerequisites)
- [Quick Start](#quick-start)
- [Shortcuts](#shortcuts)
  - [Normal, Visual, Select, Operator-pending mode](#normal-visual-select-operator-pending-mode)
  - [Normal mode](#normal-mode)
  - [Insert mode](#insert-mode)
- [Features](#features)
- [Usage](#usage)

<!-- /code_chunk_output -->

# ****Prerequisites****

- Install nodejs ≥ 12.12 for [Conquer of Completion](https://github.com/neoclide/coc.nvim#quick-start)

 ```bash
 brew install node
 ```

# Quick Start

# Shortcuts

## Normal, Visual, Select, Operator-pending mode

| Key combination | Action | Source |
| --- | --- | --- |
| `s`+`h`/`j`/`k`/`l` | Put the new window left/bottom/top/right of the current one | vim |
| [N] `\`+`h`/`j`/`k`/`l` | Go to the Nth left/down/up/right window | vim |
| `\`+`H`/`J`/`K`/`L` | Move the current window to the far left/bottom/top/right | vim |
| `\`+`w`+`w` | Move the cursor to the next window | vim |
| `\`+`w`+`q` | Close the current window | vim |
| `\`+`←`/`↓`/`↑`/`→` | Resize the current window | vim |

## Normal mode

| Key combination | Action | Source |
| --- | --- | --- |
| `/`+`/` | Stop the highlighting for a previous search pattern | vim |
| `\`+`v`+`e` | Edit the initialization commands | vim |
| `\`+`v`+`r` | Re-source the initialization commands | vim |
| `r` | Compile | vim |

## Insert mode

| Key combination | Action | Source |
| --- | --- | --- |
| `Ctrl`+`u` | Delete the text you’ve typed in the current line | vim |
| `Ctrl`+`w` | Delete the word before the cursor | vim |

# Features

- [ ]  IDE for C++
- [ ]  IDE for LaTeX

# Usage
- [Markdown guide](./doc/markdown-preview-enhanced.md)
