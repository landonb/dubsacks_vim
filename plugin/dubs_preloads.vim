" Project Page: https://github.com/landonb/dubs-vim
" Summary: Pre-System Vim startup script
" License: GPLv3
" -------------------------------------------------------------------
" Copyright © 2015-2016 Landon Bouma.
" 
" This file is part of Dubs Vim.
" 
" Dubs Vim is free software: you can redistribute it and/or
" modify it under the terms of the GNU General Public License
" as published by the Free Software Foundation, either version
" 3 of the License, or (at your option) any later version.
" 
" Dubs Vim is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty
" of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
" the GNU General Public License for more details.
" 
" You should have received a copy of the GNU General Public License
" along with Dubs Vim. If not, see <http://www.gnu.org/licenses/>
" or write Free Software Foundation, Inc., 51 Franklin Street,
"                     Fifth Floor, Boston, MA 02110-1301, USA.
" ===================================================================

" ------------------------------------------
" About:

" If you want to set any g:global variables to override stock
" Vim script behavior, you have to set the globals *before*
" sourcing the shared Vim files. So the `.vimrc` for Dubs Vim
" sources this script before loading any system scripts.

" ------------------------------------------------------------
" Add user local bin to path.
" ------------------------------------------------------------

let s:user_local_bin_path = $HOME . '/.local/bin'
if isdirectory(s:user_local_bin_path)
  let $PATH = $PATH . ':' . s:user_local_bin_path
endif

" ------------------------------------------------------------
" Add user gopath bin to path.
" ------------------------------------------------------------

let s:user_gopath_bin_path = $HOME . '/.gopath/bin'
if isdirectory(s:user_gopath_bin_path)
  let $PATH = $PATH . ':' . s:user_gopath_bin_path
endif

" ------------------------------------------------------------
" Extend the reST syntax highlighter's code vocabulary
" by overriding the ``.. code-block:: <language>`` mapping.
" ------------------------------------------------------------
" SYNC_ME: Similar *.rst changes in dubs_preloads.vim and rst_dubsvim.vim.

" See the Vim package file that takes care of reST syntax highlighting:
"  /usr/share/vim/vim74/syntax/rst.vim
" The list of recognized syntax highlighting languages is merely:
"   if !exists('g:rst_syntax_code_list')
"     let g:rst_syntax_code_list = ['vim', 'java', 'cpp', 'lisp',
"                                   'php', 'python', 'perl']
"   endif
" but we can do better than that, eh?
" Each language type is just bouced to another syntax file; see:
"   ls /usr/share/vim/vim74/syntax
" We could add them in ftplugin/rst_dubsvim.vim, but it's
"  a wee bit easier to setup the array that rst.vim uses.
" See also :help initialization for Vim script load ordering;
"  we could maybe set g: whenever and call runtime! to reload
"  the appropriate vim script, but which script is it? It's
"  easier just to swoop in early.

" Note that you cannot add 'rst' to this list without
" causing errors probably due to recursivenosity.
" NOTE: Add to this list to add languages to the .. code-block:: recognizer.
let g:rst_syntax_code_list = [
  \ 'bash',
  \ 'javascript',
  \ 'python',
  \ ]
  " E484: Can't open file syntax/json.vim
  " \ 'json',
  " 2016-11-17: One of these causes the line numbers to be inverse color.
  "  \ 'actionscript',
  "  \ 'mkd',
  "  \ 'mxml',
  "  \ 'textile',
  "  \ 'wikipedia',
  "  \ 'wp',
  " 2018-12-07: On 7K file, each code-block lang. costs 0.05 secs. of 3.75 total.
  " Meh.
  "  \ 'dtd',
  "  \ 'java',
  "  \ 'lisp',
  "  \ 'lua',
  "  \ 'make',
  "  \ 'perl',
  "  \ 'php',
  "  \ 'svg',
  " Suppose Meh.
  "  \ 'c',
  "  \ 'cpp',
  "  \ 'css',
  "  \ 'diff',
  "  \ 'go',
  "  \ 'hjson',
  "  \ 'html',
  "  \ 'ruby',
  "  \ 'sh',
  "  \ 'sql',
  "  \ 'vim',
  "  \ 'yaml',

" Re: bash syntax defined by sh.vim, so to make it work
" so you don't have to do, e.g., .. code-block:: sh
" we made a symlink, i.e.,
"   cd $HOME/.vim/bundle/dubs_ftype_mess/syntax/
"   /bin/ln -s sh.vim bash.vim

" ------------------------------------------------------
" Mini Buffer Explorer
" ------------------------------------------------------

" This is a no-op unless you've installed MBE.
" https://github.com/fholgado/minibufexpl.vim

" Tell MiniBufExplorer not to start.
let g:miniBufExplAutoStart = 0

" ------------------------------------------------------
" Viki settings
" ------------------------------------------------------

" This is a no-op unless you've installed Viki.
" https://github.com/tomtom/viki_vim

" MAYBE: Set VikiMinorMode? Anything else?

let g:vikiOpenFileWith_html  = "silent !firefox %{FILE}"
