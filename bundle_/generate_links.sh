#!/bin/bash

make_links () {

  local bdir=../bundle

  /bin/ln -sf ${bdir}/dubs_all
  /bin/ln -sf ${bdir}/dubs_core

  /bin/ln -sf ${bdir}/AutoAdapt
  /bin/ln -sf ${bdir}/command-t
  /bin/ln -sf ${bdir}/ctrlp.vim
  /bin/ln -sf ${bdir}/editorconfig-vim
  /bin/ln -sf ${bdir}/ingo-library
  # Skipping:
  #  /bin/ln -sf ${bdir}/_last_update
  # 2017-11-02: Removed minibufexpl.vim.
  #/bin/ln -sf ${bdir}/minibufexpl.vim
  /bin/ln -sf ${bdir}/nerdtree
  /bin/ln -sf ${bdir}/syntastic
  /bin/ln -sf ${bdir}/taglist
  /bin/ln -sf ${bdir}/TeTrIs.vim
  /bin/ln -sf ${bdir}/tlib_vim
  /bin/ln -sf ${bdir}/viki_vim
  /bin/ln -sf ${bdir}/vim-bufsurf
  #/bin/ln -sf ${bdir}/vim-easytags
  /bin/ln -sf ${bdir}/vim-gnupg
  # 2017-09-18: Thank you, pangloss.
  /bin/ln -sf ${bdir}/vim-javascript
  # 2017-10-16: Using my own fork of vim-jsx.
  #/bin/ln -sf ${bdir}/vim-jsx
  # 2017-03-16: Using my own fork of vim-markdown.
  # 2017-04-01: Uncommented this...
  # 2017-09-18: Recommented this...?
  #/bin/ln -sf ${bdir}/vim-markdown
  /bin/ln -sf ${bdir}/vim-misc
  /bin/ln -sf ${bdir}/vim-rails
  /bin/ln -sf ${bdir}/vim-speeddating
  /bin/ln -sf ${bdir}/vim-vinegar
}

make_links

