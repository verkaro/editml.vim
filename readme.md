# editml.vim

A lightweight Vim plugin to add EditML markup highlighting to both standalone `.EditML` files and Markdown documents.

## Features

* **Additions** `{+…+}` highlighted in **green**
* **Deletions** `{-…-}` highlighted in **red**
* **Changes** `{=…=}` highlighted in **yellow**
* **Markers** `{>…<}` highlighted in **magenta**
* **Moves** `{move~description~id}` and `{move:id}` highlighted in **blue**
* **Copies** `{copy~description~id}` and `{copy:id}` highlighted in **cyan**

## Installation

### Vim 8+ Native Package

Clone into your Vim `pack` directory:

```bash
git clone https://github.com/verkaro/editml.vim \
  ~/.vim/pack/editml/start/editml.vim
```

Vim will automatically load the plugin on startup.

### Plugin Manager (vim-plug example)

Add to your `~/.vimrc` or `init.vim`:

```vim
call plug#begin('~/.vim/plugged')
Plug 'verkaro/editml.vim'
call plug#end()
```

Then launch Vim and run:

```
:PlugInstall
```

## Configuration

Ensure syntax highlighting is enabled and add filetype detection for EditML extensions in your `.vimrc`:

```vim
" Enable syntax highlighting
syntax on

" Detect EditML files and set their filetype
augroup editml_ftdetect
  autocmd!
  autocmd BufRead,BufNewFile *.EditML,*.editml setfiletype editml
augroup END
```

The plugin provides:

* `syntax/editml.vim` for `.EditML` file highlighting
* `after/syntax/markdown.vim` to overlay EditML regions on Markdown files

## Usage

* Open any `*.EditML` (or `*.editml`) file to see EditML-specific highlighting.
* In Markdown files (`.md` / `.MD`), the EditML regions will overlay on top of your usual Markdown syntax highlighting.

Enjoy writing with EditML in Vim! Feel free to contribute or report issues on the GitHub repository.

