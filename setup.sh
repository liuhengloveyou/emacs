#!/bin/bash

if [ ! -f ~/.emacs.d/elpa/highlight-symbol.el ]
then
    echo "install highlight-symbol.el"
    git clone https://github.com/nschum/highlight-symbol.el.git
    mv highlight-symbol.el/highlight-symbol.el ~/.emacs.d/elpa
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


