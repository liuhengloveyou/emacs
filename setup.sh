#!/bin/bash

mkdir ~/.emacs.d/elpa/

if [ ! -f ~/.emacs.d/elpa/highlight-symbol.el ]
then
    echo "install highlight-symbol.el"
    git clone https://github.com/nschum/highlight-symbol.el.git
    mv highlight-symbol.el/highlight-symbol.el ~/.emacs.d/elpa/
    rm -rf highlight-symbol.el
fi

if [ ! -f ~/.emacs.d/elpa/bm.el ]
then
    echo "install bm.el"
    git clone https://github.com/joodland/bm.git
    mv bm/bm.el ~/.emacs.d/elpa/
    rm -rf bm
fi

if [ ! -f ~/.emacs.d/elpa/tabbar.el ]
then
    wget -O ~/.emacs.d/elpa/tabbar.el http://www.emacswiki.org/emacs/download/tabbar.el
fi

if [ ! -f ~/.emacs.d/elpa/smart-compile.el ]
then
    wget -O ~/.emacs.d/elpa/smart-compile.el http://www.emacswiki.org/emacs/download/smart-compile.el
fi

if [ ! -f ~/.emacs.d/elpa/go-mode.el ]
then
    echo "install go-mode"
    git clone https://github.com/dominikh/go-mode.el.git
    mv go-mode.el/go-mode*.el ~/.emacs.d/elpa/
    /bin/rm -rf go-mode.el/
fi
