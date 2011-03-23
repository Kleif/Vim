
The vimrc configuration file is meant to be used with GVim
on Windows although some parts of it may be useful in other systems.  
The theme is based on Inkpot with some changes:

![vim theme](https://github.com/Kleif/Vim/raw/hg/images/vim.png)

Additionally, the 'racket' folder contains a script to generate
a dictionary for symbol autocompletion and should work in Racket 5.0.x.  
Assuming 'racket-dict.vim' is placed in the $VIMRUNTIME folder
activate it as follows:

    " dict location.
    set dictionary+=$VIMRUNTIME\racket-dict.vim
    set complete+=k

    " read .rkt extension as a scheme file.
    au BufNewFile,BufRead *.rkt setlocal ft=scheme

