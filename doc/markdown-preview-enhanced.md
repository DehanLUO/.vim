# Markdown-preview-enhanced cheat sheet

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=3 orderedList=false} -->

<!-- code_chunk_output -->

- [Markdown-preview-enhanced cheat sheet](#markdown-preview-enhanced-cheat-sheet)
  - [Syntax guide](#syntax-guide)
    - [Headers](#headers)
    - [Emphasis](#emphasis)
    - [List](#list)
    - [Images](#images)
    - [Links](#links)
    - [Blockquote](#blockquote)
    - [Horizontal Rule](#horizontal-rule)
    - [Inline code](#inline-code)
    - [Fenced code block](#fenced-code-block)
    - [Task lists](#task-lists)
    - [Tables](#tables)
  - [Extended syntax](#extended-syntax)
    - [Table](#table)
  - [Rowspan `^`](#rowspan)
    - [Emoji & Font-Awesome](#emoji-font-awesome)
    - [Superscript](#superscript)
    - [Subscript](#subscript)
    - [Footnotes](#footnotes)
    - [Abbreviation](#abbreviation)
    - [Mark](#mark)
    - [CriticMarkup](#criticmarkup)
    - [Admonition](#admonition)
  - [Math](#math)
  - [Diagrams](#diagramshttpsshd101wyygithubiomarkdown-preview-enhanceddiagrams)
  - [Table of Contents](#table-of-contents)
  - [File Imports](#file-importshttpsshd101wyygithubiomarkdown-preview-enhancedfile-imports)
  - [Code Chunk](#code-chunkhttpsshd101wyygithubiomarkdown-preview-enhancedcode-chunk)
  - [Presentation](#presentationhttpsshd101wyygithubiomarkdown-preview-enhancedpresentation)
  - [Pandoc](#pandochttpsshd101wyygithubiomarkdown-preview-enhancedpandocidpandoc-parser)
- [Known Issues](#known-issues)

<!-- /code_chunk_output -->

## Syntax guide

### Headers

```markdown
# This is an h1 tag

## This is an h2 tag

### This is an h3 tag

#### This is an h4 tag

##### This is an h5 tag. It has one id {#my_id}

###### This is an h6 tag. It has two classes {.class1 .class2}
```

# This is an h1 tag {ignore=true}

## This is an h2 tag {ignore=true}

### This is an h3 tag {ignore=true}

#### This is an h4 tag {ignore=true}

##### This is an h5 tag. It has one id {#my_id ignore=true}

###### This is an h6 tag. It has two classes {.class1 .class2 ignore=true}

### Emphasis

```markdown
_This text will be italic_

This will also be italic\_

**This text will be bold**

**This will also be bold**

_You **can** combine them_

~~This text will be strikethrough~~
```

_This text will be italic_

This will also be italic\_

**This text will be bold**

**This will also be bold**

_You **can** combine them_

~~This text will be strikethrough~~

### List

#### Unordered List

```markdown
- Item 1
- Item 2
  - Item 2a
  - Item 2b
```

- Item 1
- Item 2
  - Item 2a
  - Item 2b

#### Ordered List

```markdown
1. Item 1
1. Item 2
1. Item 3
   1. Item 3a
   1. Item 3b
```

1. Item 1
1. Item 2
1. Item 3
   1. Item 3a
   1. Item 3b

### Images

```markdown
![GitHub Logo](https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg)
```

![GitHub Logo](https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg)

### Links

```markdown
[GitHub](https://github.com)
```

[GitHub](https://github.com)

### Blockquote

```markdown
As Kanye West said:

> We're living the future so
> the present is our past.
```

As Kanye West said:

> We're living the future so
> the present is our past.

### Horizontal Rule

```markdown
Three or more...

---

Hyphens

---

Asterisks

---

Underscores
```

Three or more...

---

Hyphens

---

Asterisks

---

Underscores

### Inline code

```markdown
I think you should use an
`<addr>` element here instead.
```

I think you should use an
`<addr>` element here instead.

### Fenced code block

#### Syntax Highlighting

````markdown
```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```
````

````
```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
````

#### Code block class (MPE extended feature)

````markdown
```javascript {.class1 .class}
function add(x, y) {
	return x + y;
}
```
````

````
```javascript {.class1 .class}
function add(x, y) {
  return x + y
}
````

##### line-numbers

````markdown
```javascript {.line-numbers}
function add(x, y) {
	return x + y;
}
```
````

````
```javascript {.line-numbers}
function add(x, y) {
  return x + y;
}
````

#### highlighting rows

````markdown
```javascript {highlight=10}

```
````

```javascript {highlight=10-20}

```

```javascript {highlight=[1-10,15,20-22]}

```

````
```javascript {highlight=10}
````

```javascript {highlight=10-20}

```

```javascript {highlight=[1-10,15,20-22]}

```

### Task lists

```markdown
- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item
```

- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item

### Tables

```markdown
| First Header                | Second Header                |
| --------------------------- | ---------------------------- |
| Content from cell 1         | Content from cell 2          |
| Content in the first column | Content in the second column |
```

| First Header                | Second Header                |
| --------------------------- | ---------------------------- |
| Content from cell 1         | Content from cell 2          |
| Content in the first column | Content in the second column |

## Extended syntax

### Table

#### Colspan `>` or `empty cell`

```markdown
| a   | b   |
| --- | --- |
| >   | 1   |
| 2   |     |
```

| a   | b   |
| --- | --- |
| >   | 1   |
| 2   |     |

## Rowspan `^`

```markdown
| a   | b   |
| --- | --- |
| 1   | 2   |
| ^   | 4   |
```

| a   | b   |
| --- | --- |
| 1   | 2   |
| ^   | 4   |

### Emoji & Font-Awesome

```markdown
:smile:
:fa-car:
```

:smile:
:fa-car:

### Superscript

```markdown
30^th^
```

30^th^

### Subscript

```markdown
H~2~O
```

H~2~O

### Footnotes

```markdown
Content [^1]

[^1]: Hi! This is a footnote
```

Content [^1]

[^1]: Hi! This is a footnote

### Abbreviation

```markdown
_[HTML]: Hyper Text Markup Language
_[W3C]: World Wide Web Consortium
The HTML specification
is maintained by the W3C.
```

_[HTML]: Hyper Text Markup Language
_[W3C]: World Wide Web Consortium
The HTML specification
is maintained by the W3C.

### Mark

```markdown
==marked==
```

==marked==

### CriticMarkup

```markdown
{++Addition++}

{--Deletion--}

{~~Ori~>Substitution~~}

Comment.{>>This is a comment<<}

{==Highlight==}{>>This is a comment<<}
```

Don’t go around saying{‐‐ to people that‐‐} the world owes you a living. The
world owes you nothing. It was here first. {~~One~>Only one~~} thing is
impossible for God: To find {++any++} sense in any copyright law on the
planet. {==Truth is stranger than fiction==}{>>true<<}, but it is because
Fiction is obliged to stick to possibilities; Truth isn’t.

### Admonition

```markdown
!!! note This is the admonition title
This is the admonition body
```

!!! note This is the admonition title
This is the admonition body

## Math

```markdown
$f(x) = \sin(x) + 12$
```

$f(x) = \sin(x) + 12$

```markdown
$$
i\hbar\frac{\partial \psi}{\partial {t}} = \frac{-\hbar^2}{2m}
\left( \frac{\partial^2}{\partial x^2} + \frac{\partial^2}{\partial y^2} +
\frac{\partial^2}{\partial z^2} \right) \psi + V \psi
$$
```

$$
i\hbar\frac{\partial \psi}{\partial {t}} = \frac{-\hbar^2}{2m}
\left( \frac{\partial^2}{\partial x^2} + \frac{\partial^2}{\partial y^2} +
\frac{\partial^2}{\partial z^2} \right) \psi + V \psi
$$

## [Diagrams](https://shd101wyy.github.io/markdown-preview-enhanced/#/diagrams)

## Table of Contents

```bash
:CocCommand markdown-preview-enhanced.createTOC
```

## [File Imports](https://shd101wyy.github.io/markdown-preview-enhanced/#/file-imports)

## [Code Chunk](https://shd101wyy.github.io/markdown-preview-enhanced/#/code-chunk)

## [Presentation](https://shd101wyy.github.io/markdown-preview-enhanced/#/presentation)

## [Pandoc](https://shd101wyy.github.io/markdown-preview-enhanced/#/pandoc?id=pandoc-parser)

# Known Issues

1. [Absolute path not working](https://github.com/weirongxu/coc-markdown-preview-enhanced/issues/11#issuecomment-1072998534).
