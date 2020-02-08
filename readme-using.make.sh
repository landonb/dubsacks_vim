#!/bin/bash

cat readme-using.pt1.rst > README-USING.rst

cat bundle_/dubs_after_dark/README.rst >> README-USING.rst
cat bundle_/dubs_appearance/README.rst >> README-USING.rst
cat bundle_/dubs_buffer_fun/README.rst >> README-USING.rst
cat bundle_/dubs_edit_juice/README.rst >> README-USING.rst
cat bundle_/dubs_file_finder/README.rst >> README-USING.rst
cat bundle_/dubs_ftype_mess/README.rst >> README-USING.rst
cat bundle_/dubs_grep_steady/README.rst >> README-USING.rst
cat bundle_/dubs_html_entities/README.rst >> README-USING.rst
cat bundle_/dubs_mescaline/README.rst >> README-USING.rst
cat bundle_/dubs_project_tray/README.rst >> README-USING.rst
cat bundle_/dubs_quickfix_wrap/README.rst >> README-USING.rst
cat bundle_/dubs_rest_fold/README.rst >> README-USING.rst
cat bundle_/dubs_style_guard/README.rst >> README-USING.rst
cat bundle_/dubs_syntastic_wrap/README.rst >> README-USING.rst
cat bundle_/dubs_toggle_textwrap/README.rst >> README-USING.rst
cat bundle_/dubs_web_hatch/README.rst >> README-USING.rst

# Forked repos (not their original):
#  cat bundle_/ansible-vim/README.md >> README-USING.rst
#  # DEPRECATED: cat bundle_/vim-jsx/README.md >> README-USING.rst
#  cat bundle_/vim-markdown/README.md >> README-USING.rst
#  cat bundle_/vim-surround/README.markdown >> README-USING.rst
#  cat bundle_/vim-tmux-navigator/README.markdown >> README-USING.rst

cat readme-using.pt2.rst >> README-USING.rst

