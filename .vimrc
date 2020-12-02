"https://gist.github.com/pinggit/778bce339a58691af257288bde383aa5
"https://gist.githubusercontent.com/pinggit/778bce339a58691af257288bde383aa5/raw/6cfec9f520109f49e24ffd8f7d702119f4594e74/.vimrc
"GistID: 778bce339a58691af257288bde383aa5
"summary {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"key mappings
"
"
"looks 4 key groups are a/v, and good, for customization:
"Fn, arrow, "," , double keys
"
"direction keys: {{{2
"up/down/left/right	c-e c-y zh zl (move screen up/dn/lf/rt 1 CH)
"Alt-up/down: 		go prev/next buffer in curr tab
"Alt-left/right:	move curr tab left/right
""S-left/right:        	resize window width (diabled (2018-03-13) )
""S-left/right:        	scroll a screen horizontally
"S-up/down:            	resize window height
"no in this file
"
"Ctrl-left/right/up/down: Voom: move the node left/right/up/down
" 			best way is to use \-lrud instead
"C-left,right 		scroll left half,right screen
" 			(conflicting with Voom, might not work)
" 			(conflicting with tmux, resize pane, might not work)
"
"no in this file
"ctrl-alt-left/right:   vim: go prev/next tab (looks only in xcfe?)
" 			better use Ngt instead
" 			conflicting with tmux, move window
"
"shift-alt-left/right:  go left/right tab
"                       (2018-06-16) hard to squeeze files in one tabline
"                       need a way to quickly switch
"
"func keys: {{{2
"C-F2		toggle guioptions

"F1-F5 seems tricky and problematic under secureCRT

"F6 		add Voom mark at end of curr line, 
"C-F6 		perldo to search for cli, add voom mark and then voom
"S-F6 		similar, but for junos config read

"F7 		add a comment at end of curr line 

"F8 		remove empty lines in visual mode
"C-F8		toggle txtbrowser
"S-F8 		copy current fullpath filename to vim buffer

"F9 		join every 2 lines into 1 line under visual
"C-F9 		auto scrolling down
"
"F10 		convert config from ol to mx
"S-F10 		convert config from mx to ol	
"
"F11 		insert a timestamp under insert mode
"
"remap existing keys {{{2
"
"h             Maph "smart" quit (also quit the "pairing" window, like in voom)
"-              c-b
"<space>        c-f

",leading {{{2
",ab 		asciidoc: blue, word
",aB 		turn to (asciidoc) bullet list(add * in front of line)
",ac            toggle acp(autocomplpop)
",ad		archive done
",aD		archive done reopen
",ag 		line-through 
",ah 		normal: asciidoc (whole ) to html , and call browser    (disabled 2015-11-28) 
"               normal: use asciidoctor to generate html in same folder (2015-11-28) 
"               visual: replace selected text with html
",aH            prompt asciidoc in command line for customer use
"
",ai            markdown link to asciidoc link
"               asciiart to image (disabled)
",al 		asciidoc: insert a list block
",as 		asciidoc: insert a source sh block
",aS 		asciidoc: insert a sidebar block
",aL 		asciidoc: insert a literal block
",am 		asciidoc: insert a literal block with macro(ifdef):start
",aM 		asciidoc: insert a literal block with macro(ifdef):end
",an 		asciidoc: [v]making a number list(add "1.  " in front of a line)
",aN 		asciidoc: insert a (multi-parag) note block
",ao 		asciidoc: overline for a line
",aO 		asciidoc: overline for a word (not done)
",ap 		asciidoc to pdf 
"               [v]ArchiveNotDone
",aP 		asciidoc to pdf
",aq            asciidoc: insert a list block: subs="quotes"
",aQ 		asciidoc: qanda
",aR 		asciidoc: red, line
",ar 		asciidoc: red, current word, normal and visual
",at 		asciidoc: insert table
",aT 		asciidoc: insert table, with header/footer
",au 		asciidoc: underline for a line
",aU 		asciidoc: underline for a word (not done)
",aw            asciidoc to word (docx), by pandoc

",bb            asciidoc: book format2
",bf            asciidoc: book format
",bt 		performance(benchmark) test start
",bs		performance(benchmark) test stop

",cc            send a command multipe times with an interval
",C		compare curr buff with disk
" 		(not quite good for large or encrypted file)
",cd 		go to folders of current shell
",co            colorscheme toggling
",ci,cI,cr      iterate next,prev,random colorscheme
"
",cv 		
"               "deprecated:Conqterm, send visual text to recent conqterm buffer
"                   (disabled, not quite oftenly used)
"               "deprecated:start conqterm in split window(vertically) 
",ct            
"               "deprecated:start conqterm in new tab
",cs            :sum of visually selected num column
"               "deprecated:start conqterm in split window(herizontally)
",cp            :CtrlP
",cm            :CtrlPMRU<CR>
",cb            :CtrlPBuffer


",di 		insert a timestamp in curr cursor place
",da 		append a timestamp in curr cursor place
",Di 		insert a timestamp in curr cursor place
",Da 		append a timestamp in curr cursor place
",dE            clear all comment lines(except shebang line), and blank lines, use perldo
",de            same, but use ;g , more portable
"               visual mode: remove just empty lines (prev C-F7)
",dw            delete whitespaces for a line
",do            ]cdo
",dp            ]cdp

",eb 		encrypt current para (vip) with base64
",eB              de-encrypt ...
",ev              encrypt current visual selection
",em            mapping for keyword searching cmd from junose command captures
",en            mapping for keyword searching cmd from junose command captures
"
",es            show :leetcode show x (2020-02-05) 
",eS            submit :leetcode submit(2020-02-05) 
",et            test :leetcode test(2020-02-05) 
",eT            test :leetcode test -t ''(2020-02-05) 
",ea            answer :leetcode show x --solution -l python3
"
",Es            same as ,eX, but in qfix win
",ES            same as ,eX, but in qfix win
",Et            same as ,eX, but in qfix win
",ET            same as ,eX, but in qfix win
",Ea            same as ,eX, but in qfix win
"

",fo            set format=+a
",fl 		set ft=jel
",fc 		set ft=jec
",fj            fold junos config

",gi            :Gist -p
",gr 		recursive grep operator
",gp            get pr
",gq            v  ,gq           :s/\s\+/ /g<CR>gvgq
"               Last set from ~/.vim/plugin/justify.vim
",gQ 
"
",hh            :vertical resize +10
",hi            :vertical resize 86 (long enough just to show the cc line)
",H             :vertical resize -10
"
",i             flexible map, for temporary use
"
",je 		set syn lines, disabled (don't want to mess things up)
",jd            append discus code in the file
"
",ja            asciidoc publish blog to jekyll
",jA            asciidoc publish blog to jekyll, normal mode only, support
"               user command-line selection
"
",jb            :JekyllBuild<CR>
",jg            jekyll FU git external commands
",jh            jupytext md to ipynb and to html
",ji            select blog id
",jl            :JekyllList<CR>
",jL            :ranger
",js            jekyll from scratch/start (no pre-selected content), new
"               buffer, no tab.  ->CMD:JekyllPost->FUNC:JekyllPost
"               v: JekyllPostRange<CR>
",jS            jupytext sync
",jp            :JekyllPostAllTab<CR>
"               nn: use whole current file as content of new post (in new tab)
"               vn: use selected text as content of new post(in new tab)
",jP            :quick push (don't wait user input) and review
",jt            jekyll theme selector
",jy            prefix yaml header in the file
"
",k             :resize +10
",K             :resize -10
",l             switch between current & last tab
",ma            mark arrow (same as F7)
",mA            markdown to asciidoc header
",mX            markdown
",mc            markdown insert (html) comment
",mt            markdown toc (muruku)
",mh            markdown to html with toc support(markdown_py -x toc)
",mi            markdown image link
"
",ml            markdown link, todo
",mp            :Mpage 2
"
",nc            neocompletetoggle
",nf            no files: turn off all additional files: nobackup, noudf
",nn            toggle nerdtree
",o             visual select the command output
",qp            query-pr
",qt            quit translation win(dict)
",qv|vV         quit the NR window pairs caused by vv(not working yet)
"               quit newly generated nrrwrgn+voom win pairs
",qq            g:/^\S/gqq (not difined yet)
",r 		call ranger(console vim only)
",R 		call !ranger-cd(console vim only), not working yet
",sl            :shell
",st            :VimShellTab
",ss            VimShellCreate, split
",sv            VimShellCreate, split vertially
",sa            search (so highlight) all non-ascii
"                :shell
",S 		toggle syntax=ON/OFF (enable/disable syn hl only for curr buff)

",p 		toggle set paste/nopaste
",pa            :PymodeLintAuto
",pl            insert python block ```python ```
",pc            insert python block comment """ """
",pr            vim-repl :REPLToggle
",pb            vim-repl :add breakpoint and continue until this line
"                         pdb b and c
",pn            vim-repl :next line (pdb n)
",ps            vim-repl :step into a function (pdb s)

",pp            work with ,yy, paste from file
",PP            same, but use P instead of p

",tA 		type of file: set ft=asciidoc2
",ta 		type of file: set ft=asciidoc|set conceallevel=0
",tb            :TagBarToggle
",tc            toggle colorcolumn
",td            toggle drawit line style
",tf 		toggle asciidoc foldexpr
",tg            :Tabularize based on space
",th            toggle syntax highlight
",tp             :TabMessage CMD - put ex command capture to a new tab buffer
",ti            toggle vimim Punctuation
",tr            toggle wrap
",ts		translate with sdcv(startdic console), horizontally
",tS 		(disabled) sdcv(startdic console) dict, and jump to new win
",tS 		toggle spellcheck
",tt            :TlistToggle
",tw 		toggle textwidth (bet 0 and 80)
",tz 		toggle ZoomWin (disabled, use <c-w>o)
",tv 		type of file: set ft=vimwiki

",u 		:Utl
"
",V 		visual block selection a paragraph
",v             visual select the just pasted text
"va 		normal:Voom asciidoc, disabled, yield to pymode vaM
"vm 		normal:Voom markdown
"vv 		normal:Voom
"               visual:ena nrrw,set to asciidoc,enable Voom (:NR<CR>,tavv<CR>)
",wt            vimwiki: togglelist
"
",W 		toggle textwidth (bet 0, 35, 40)
",wf            wiki following link
",ws             wiki split and edit linked page (disabled, no much use)
",wv            wiki vsplit and edit linked page
",yd            youdao
",yD            youdao
",yp            call yapf to format current python file
"
",yy            v: save in a temp file, ,pp to read from temp file and paste
",zl            fold CLI logs
"               v: copy and save into file
"
",>             indent just pasted texts
"
",i             indent junos
"
" ""            visual map, :CopyFold

";leading {{{2

"double keys {{{2
"
",,             escape
"vv             VoomToggle
"aa             voom built-in
"AA             voom built-in
"oo/OO          just open a new line w/o entering ins mode(n/w cvim;w/ "gvim)

"keys: {{{2
"alt-o 			just open a new line w/o entering ins mode(n/w cvim;w/ "gvim)
"alt-q                  exit insert mode from terminal
"C-c,C-p  		"+y and "+p
"a-c,a-p 		"*y and "*p

"A-_/= 			increase/decrease current window herizontally
"
"object (operator-pending map) {{{2
" ih 			asciidoc/markdown heading text
" ia 			same,whole thing (not only text) 
"
"global vars############{{{2
"g:lasttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"fold CLI outputs,not working
"map ,je syn region erxLog start=/^\(\S\S\+.\{0,45}\S#\s*\S\+\|slot \d\d\=->\S\+\|->.\+\|\*-\*-\*-\*-\*-\)/ end=/^\(\S\+.\{0,45}\S#\|^#$\|->\|slot \d\d\=->\|\*-\*-\*-\*-\*-\)/me=s-1 fold
"(2018-10-06) simple CLI log fold
nmap ,zl :syn region erxLog start=/^\(\(#\|\$\)\s*\S\+\)/ end=/^\(#\s*\S\+\)/me=s-1 fold
"common config {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"must haves {{{2
"no compatible with vi
"should be on very start,otherwise there will be
"side effects to other options,maps
set nocp 	    

set sidescroll=3                "good for scrolling long line horizontally
set ruler
set showcmd 			"seems no effect, maybe because existing config
"space page down ,shift-space doesn't work
map <SPACE> <C-F>
"map <S-SPACE> <C-B>
"this is inspired from mutt
map - <C-B>
set hls				"highlight search,set nohls to turn off
set nowrapscan
set nowrap                      "make log file looks aligning better, (2018-04-05) 
set is				"increamental(realtime) search,
set backspace=indent,eol,start	"control backspace key

set whichwrap=b,s,<,>,[,]	"which key stroke can go back to prev line:
				" backspace,space,left,right,left,right in
				" insert mode

set number			"set line number
"set nonumber			"to turn it off
filetype plugin	indent on
"helptags ~/.vimdoc
"enable mouse under normal/insert mode, so "visual" mode can be used to ignore
"mouse (so mouse can be used by terminal to , say, select texts)
set mouse=ni			

syntax on			"syntax highlight
"syntax enable			"
"per vim manual, syntax on/enable is not the same
"The ':syntax enable' command will keep your current color settings.  This
"allows using ':highlight' commands to set your preferred colors before or
"after using this command.  If you want Vim to overrule your settings with the
"defaults, use: syntax on
"
"syntax manual			"syntax highlight
"
"change the number of space characters inserted for indentation
set shiftwidth=4		">> will indent 4 CH

"To control the number of space characters that will be inserted when the tab
"key is pressed
set tabstop=8			"while tab will indent 8,don't change this value
				"otherwise will get much trouble!
				"
"http://vim.wikia.com/wiki/Converting_tabs_to_spaces
"insert space characters whenever the tab key is pressed, set the 'expandtab' option:
"With this option set, if you want to enter a real tab character use Ctrl-V<Tab>
"key sequence
set expandtab

"this looks good and work fine(2014-12-06) 
"http://vim.wikia.com/wiki/Search_for_visually_selected_text
" Search for selected text.
" http://vim.wikia.com/wiki/VimTip171
let s:save_cpo = &cpo | set cpo&vim
if !exists('g:VeryLiteral')
  let g:VeryLiteral = 0
endif
function! s:VSetSearch(cmd)
  let old_reg = getreg('"')
  let old_regtype = getregtype('"')
  normal! gvy
  if @@ =~? '^[0-9a-z,_]*$' || @@ =~? '^[0-9a-z ,_]*$' && g:VeryLiteral
    let @/ = @@
  else
    let pat = escape(@@, a:cmd.'\')
    if g:VeryLiteral
      let pat = substitute(pat, '\n', '\\n', 'g')
    else
      let pat = substitute(pat, '^\_s\+', '\\s\\+', '')
      let pat = substitute(pat, '\_s\+$', '\\s\\*', '')
      let pat = substitute(pat, '\_s\+', '\\_s\\+', 'g')
    endif
    let @/ = '\V'.pat
  endif
  normal! gV
  call setreg('"', old_reg, old_regtype)
endfunction
vnoremap <silent> * :<C-U>call <SID>VSetSearch('/')<CR>/<C-R>/<CR>
vnoremap <silent> # :<C-U>call <SID>VSetSearch('?')<CR>?<C-R>/<CR>
vmap <kMultiply> *
nmap <silent> <Plug>VLToggle :let g:VeryLiteral = !g:VeryLiteral
  \\| echo "VeryLiteral " . (g:VeryLiteral ? "On" : "Off")<CR>
if !hasmapto("<Plug>VLToggle")
  nmap <unique> <Leader>vl <Plug>VLToggle
endif
let &cpo = s:save_cpo | unlet s:save_cpo

nmap oo o<Esc>k<esc>
nmap OO O<Esc>j<esc>

if v:version >= 800
    "go back to normal mode in terminal, not working
    "tnoremap <a-q> <c-\><c-N>
    "tnoremap <a-q> <c-w>N

    "this work fine, but bans a lot of shell features (like scroll old cli, etc)
    let g:ctrwo = 0
    tnoremap <esc><esc> <C-W>N
    tmap <c-w>o <c-w>N<c-w>oi

    function! Ctrlwo()
        if g:ctrwo == 0
            let g:ctrwo=1
            normal <c-w>N<c-w>oi
            echo "zoomed in!"
        else
            let g:ctrwo=0
            normal <c-w>N<c-w>oi
            echo "zoomed out!"
        endif
    endfu
    "this does not work yet
    "tnoremap <c-w>o :call Ctrlwo()<CR>

    set termwinscroll=100000000000
endif

"if v:version > 800
"    "spare ctrl keys in bash
"    "set termwinkey=<C-I>
"    "set termwinkey=<C-J>
"    "set termwinkey=<C-O>
"    set termwinkey=<c-m>
"    tnoremap <esc><esc> <C-m>N
"    set termwinscroll=100000000000
"    "this delays c-w in bash
"    "tmap <c-w>o <c-m>N<c-m>oi
"endif





""must have mini--- {{{2
""  for fast paste into other machines
""copy and paste below lines in new vim ex mode
"function! TogglePaste()
"    if (&paste == 0)
"	setl paste
"    else
"	setl nopaste
"    endif
"endfu
"nn ,p :call TogglePaste()<CR>:set paste?<CR>
"map oo o<Esc>k<esc>
"map OO O<Esc>j<esc>
":set nocp 	    
":set ruler
":set showcmd 			"seems no effect, maybe because existing config
":set nowrapscan
":map <SPACE> <C-F>
":map - <C-B>
":set hls				"highlight search,set nohls to turn off
":set is				"increamental(realtime) search,
":set backspace=indent,eol,start	"control backspace key
":set whichwrap=b,s,<,>,[,]	"which key stroke can go back to prev line:
"":				" backspace,space,left,right,left,right in
"":				" insert mode
":set number			"set line number
":filetype plugin	indent on
":set mouse=ni			
":syntax on			"syntax highlight
":set shiftwidth=4		">> will indent 4 CH
":set tabstop=8			"while tab will indent 8,don't change this value
"":				"otherwise will get much trouble!
":set expandtab
":set udf
":nn ,sa /[^\d0-\d127]
""copy selected text (ctrl-c), originally a not-so-useful key in vim
":vmap <C-c> "+y"*y
":vmap <A-c> "*y
""Paste clipboard contents (ctrl-p), originally a not-so-useful key in vim
":nnoremap <C-p> "+p
":map ,dE :perldo s/(^\s*#[^!].*)//g<CR> :%s/^[\ \t#]*\n//g<CR>:nohls<CR>
"":map ,dE :g/\v^\s*#([^!]|$)|^\s*$/d
"map <UP> <C-y>
"map <DOWN> <C-e>
"map <left> zh
"map <right> zl
"let g:lasttab = 1
"au TabLeave * let g:lasttab = tabpagenr()
"function! s:switch()
"  if tabpagenr("$") > 1
"    exe "tabnext" g:lasttab
"  else
"    "without this, any change in a buffer will 
"    "generate a warning before switch to other buffer
"    set hidden
"    b #
"  endif
"endfunction
"noremap <silent> ,l :call <SID>switch()<enter>
"
""conditional map of h--- {{{2
"
""gmail thread map a key to "conditionally" override built-in behavior
""disabled (2014-10-29) , often close buffers accidentally
"function! <SID>Maph()
"  "if cursor stays in leftmost[virtcol(".")==1] and upmost[line(".")==1] 
"  "  corner of the buffer
"  "if line(".") == 1 && virtcol(".") == 1
"  if virtcol(".") == 1
"  "this also works
"  "if col(".") == 1
"    "return ":q\r"
"    "not only quit current win, but 'pairing' win, if has
"    return ",qv"
"  else
"    return "h"
"  endif
"endfunction
"nmap <expr> h <SID>Maph()
"
""others {{{2
""(2013-12-23) for perl fold, doesn't work, don't understand
"set foldlevelstart=2
"let perl_fold=1
"let sh_fold_enabled=1
"let perl_extended_vars=1
"let perl_sync_dist=250
"colorscheme koehler
"nn ,de g/\s*#[^!]\|\s*#$\|^\(\s*\|\%u00a0\)$/d

"(2019-09-21) big file syntax highlight issue finally resolved.
"https://github.com/vim/vim/issues/2790
set redrawtime=50000

if has('gui_running')
    set background=light
else
    set background=dark
endif

function! TogglePaste()
    if (&paste == 0)
	setl paste
    else
	setl nopaste
    endif
endfu
nn ,p :call TogglePaste()<CR>:set paste?<CR>

let g:format=0
function! ToggleFormat()
    if (g:format == 0)
        let g:format=1
        setl fo+=a
    else
        let g:format=0
        setl fo-=a
    endif
endfu
nn ,fo :call ToggleFormat()<CR>:set fo?<CR>

let g:togglesyntax=0
function! ToggleSyntax()
    if (g:togglesyntax == 0)
	syntax sync fromstart
        let g:togglesyntax=1
    else
	syntax sync minlines=150
        "use large number anyway in power PC, (Tue, Jan 16, 2018  7:05:26 AM) 
	syntax sync minlines=2500
        let g:togglesyntax=0
    endif
endfu
nn ,th :call ToggleSyntax()<CR>:syntax sync<CR>

let g:toggleacp=0
function! ToggleAcp()
    if (g:toggleacp == 0)
	:AcpEnable
        let g:toggleacp=1
        echo "Acp enabled"
    else
	:AcpDisable
        let g:toggleacp=0
        echo "Acp disabled"
    endif
endfu
nn ,ac :call ToggleAcp()<CR>

let g:ToggleNcp=0
function! ToggleNcp()
    if (g:ToggleNcp == 0)
	:NeoCompleteToggle
        let g:ToggleNcp=1
        echo "Neocomplete enabled"
    else
	:NeoCompleteToggle
        let g:ToggleNcp=0
        echo "NeoComplete disabled"
    endif
endfu
nn ,nc :call ToggleNcp()<CR>
nn ,nc :NeoCompleteToggle<CR>

function! ToggleWrap()
    if (&wrap == 0)
	setl wrap
    else
	setl nowrap
    endif
endfu
nn ,tr :call ToggleWrap()<CR>:set wrap?<CR>

"need some more test
"join lines into a long line
"noremap ,q :g/^\</'{+,'}-j
"split a long line into lines
"noremap ,Q :g/^\S/normal gqqo<esc>

"set linespace=6
"turn off conceal feature
set conceallevel=0
"not sure if this is the solution for supporting more tabs
set tabpagemax=40

"gmail thread:ignore all same lines and show ONLY diff lines
"
set diffopt=filler,context:0

"set textwidth=80
"toggle tw bet 0 and 80, and display curr value
:nnoremap ,tw :let &textwidth = (&textwidth ? 0 : 80)<CR>:set textwidth?<CR>

function! ToggleTextWidth()
    if (&textwidth == 0)
	"note: one common mistake: setl textwidth = 32, no space allowed
	setl textwidth=32
    elseif (&textwidth== 32)
	setl textwidth=45
    elseif (&textwidth== 45)
	setl textwidth=50
    elseif (&textwidth== 50)
	setl textwidth=80
    elseif (&textwidth== 80)
	setl textwidth=0
    else
	setl textwidth=0
    endif
endfu
"toggle tw bet 0, 32, 45 ,50, 80
"useful when working on english(use 45)&chinese(use 32) docs
":nnoremap ,W :call ToggleTextWidth()<CR>:set textwidth?<CR> 

:nnoremap ,u :Utl<CR>

"make vim remember longer history
set history=10000

nn ,hh :vertical resize +10<cr>
nn ,hi :vertical resize 86<cr>
nn ,H :vertical resize -10<cr>
nn ,k :resize +10<cr>
nn ,K :resize -10<cr>

"laststatus
"The value of this option influences when the last window will have a
"status line:
"	0: never
"	1: only if there are at least two windows
"	2: always
"The screen looks nicer with a status line if you have several
"windows, but it takes another screen line. |status-line|
set laststatus=2

"permanent undo
set udf

"these are from user manual
set backup
"set backupext=.bak 		"change backup file from xxx~ to xxx.bak
set writebackup			"delete backup after write

"seems I never use,also good for encrypted files
"(2013-05-17) this is not good, in case of outage, no way to recover...
"setlocal noswapfile 		"disable swapfile, 
"set nobackup
"set nowritebackup

"this is for asciidoc syntax file, 
"otherwise got following error and highlight scheme gone
"E363: pattern uses more memory than 'maxmempattern'
"Type  :quit<Enter>  to exit Vim
"
set maxmempattern=200000

"speed up asciidoc2 highlight, seems better
"syntax sync minlines=100
syntax sync minlines=150


"this only works when :syntax manual
"the goal is:
" 1) make vim recognize (e.g. modeline) ft, so Voom automatically work
" 2) don't enable syntax highlight by def -- for huge text this is slow
" 3) still able to (manuall) enable syn hl for some files when necessary
function! ToggleSyntaxOption()
  if &syntax == 'ON'
    setl syntax=OFF
  else
    setl syntax=ON
  endif
  set syntax?
endfunction
"nn ,S :set syntax=ON<cr>
nn ,S :call ToggleSyntaxOption()<CR>
nn ,sl :shell<CR>

"set encoding=cp936
set lbr
set formatoptions+=mB 		"make sure gq works for chinese
set formatoptions=tcqmB 	"this was tested works for sure

set linebreak 			"break at word, not CH


"chinese display
"see gmail thread: vim: 有没有万能的中文识别？
"looks either ucs-bom, or utf-16le, will be fine, for youdao new word
"http://www.cnblogs.com/jaiho/archive/2011/08/24/2056375.html
set termencoding=utf-8
"causing problem(2020-04-17): in a v7.4 server treat log as mac, all one line!
"set fileformats=unix,dos,mac
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gk2312,gbk,gb18030,cp936,latin1,utf-16le

				
"need to turn off when 'gqap' provide wired result (for a text blocks)
"check my gmail thread vim: strange issue with gq
set smartindent			"indents each line the same amount as preceding one

"this is to modify the default "smartindent" feature, to make #
"in the newline doesn't unindent automatically
"sometime this modification is useful, here disable temporarily
":inoremap # X#

"set autoindent

"use >,< to indicate there is more CH to right,left
"set nolist 			"default don't display tabs
"set listchars=extends:>
set listchars=tab:>-,trail:- 	"vim manual example, better
set listchars+=precedes:<

"use ~ to diff trail, add eol, look even better
"vim don't have anything visual for space.
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

"no spell check, make the color scheme clean
"set nospell

"runtime is a bit diff with source
"here the path is based on 'runtimepath' var
"so no need to cp it into .vim
:runtime! ftplugin/man.vim

:set dictionary=/usr/share/dict/words

"set virtualedit=all 	"vum,good for tab editting



"my own maps {{{1

"enter same folder as current file in buffer
"great for NERDTreeToggle(2019-10-25) 
"autocmd BufEnter * lcd %:p:h
autocmd BufEnter * if &buftype !=# "terminal" | lcd %:p:h | endif

"leetcode cli {{{2
"nn ,et :!leetcode test %<CR>
"nn ,eT :!leetcode test % -t ''<left>
"nn ,es :!leetcode submit %<CR>
nn ,es :AsyncRun -save=1 -mode=term -pos=bottom -rows=15 -cols=40 -focus=0 leetcode show %:t:r:r<CR>
nn ,et :AsyncRun -save=1 -mode=term -pos=bottom -rows=15 -cols=40 -focus=0 leetcode test %<CR>
nn ,eT :AsyncRun -save=1 -mode=term -pos=bottom -rows=15 -cols=40 -focus=0 leetcode test % -t ''<left>
nn ,eS :AsyncRun -save=1 -mode=term -pos=bottom -rows=15 -cols=40 -focus=0 leetcode submit %<CR>
nn ,ea :AsyncRun -save=1 -mode=term -pos=bottom -rows=15 -cols=40 -focus=0 leetcode show %:t:r:r --solution -l python3 <CR>

nn ,Es :AsyncRun -save=1 -focus=1 leetcode show %:t:r:r<CR>
nn ,Et :AsyncRun -save=1 -focus=1 leetcode test %<CR>
nn ,ET :AsyncRun -save=1 -focus=1 leetcode test % -t ''<left>
nn ,ES :AsyncRun -save=1 -focus=1 leetcode submit %<CR>
nn ,Ea :AsyncRun -save=1 -focus=1 leetcode show %:t:r:r --solution -l python3 <CR>


"create folder on write {{{2
"https://stackoverflow.com/questions/4292733/vim-creating-parent-directories-on-save
"works fine. (2019-10-24) 
function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

"(2019-06-07) fix auto-indent issue of original yaml ft. 
"need to install vim-ansible plugin
au BufNewFile,BufRead *.yaml set filetype=ansible

"preconfigured macro content to convert epoch time, use register q and a
let @q = '0wwww"ay10lcw=strftime("%T", @a)j'
"go left/right tab
nn <s-a-left> gT
nn <s-a-right> gt

"not working
"let helptags=$VIM."/vimfiles/doc"
"set helplang=cn

"nn qq :q<cr>

"modify selected text using combining diacritics {{{2
"(2018-06-22)  to add e.g. like strikeout line in md list
"http://vim.wikia.com/wiki/Create_underlines,_overlines,_and_strikethroughs_using_combining_characters
command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction
"


"this will overide some good thing (like :cw)
"TODO: need to except term mode
nn <CR> <C-W>w
"
"nn <expr> <CR> <C-W>w if &buftype !=# "terminal" | endif
"func! Enter()
"    if &buftype !=# "terminal"
"        <C-w>w
"    endif
"endf
"nn <expr> <CR> Enter()

"(2014-11-08) disable original vim c-wc-o (:only) and make it same as ZoomWin
nmap <C-w><C-o> <C-w>o

"turn comment (#) lines into empty line(but except:
" 1) shebang line), 
" 2) .."..#..
"then remove empty lines, and the lines with only # (tested)
nmap ,dE :perldo s/(^\s*[#"][^!].*)//g<CR> :%s/^[\ \t#"]*\n//g<CR>:nohls<CR>
nmap ,de :g/\s*#[^!]\\|\s*#$\\|^\s*$/d
"(2020-02-17) add support of "non-breaking" space
nn ,de g/\s*#[^!]\|\s*#$\|^\(\s*\|\%u00a0\)$/d
"more general way (remove dependent on perl)
"but the "map" does not work: E492 not an editor command
"map ,dE :g/\v^\s*#([^!]|$)|^\s*$/d

"clear empty lines (including those containing spaces/tabs)
vn ,de :s/^[\ \t]*\n//g<CR>:nohls<CR>
"remove empty lines in visual mode
"vmap <F8> :g/^\s*$/d<CR>

"(Fri 10 Jan 2020 10:46:19 AM STD) 
"https://vim.fandom.com/wiki/Remove_unwanted_spaces#Simple_commands_to_remove_unwanted_whitespace
:nnoremap <silent> ,dw :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>


"QFwin {{{2

"this is to make the <enter> in the quickfix just display, 
"but don't jump into the source files
augroup MyQFCommand
    au!
    au FileType qf nnoremap <buffer> <CR> <CR><C-W>p
augroup END

"this doesn't work, guess overided by taglist
augroup MyTagListCommand
    au!
    au BufEnter FileType taglist nnoremap <buffer> <CR> <CR><C-W>p
augroup END



"
"FormatBook {{{2
"version1: {{{3
func! FormatBook()
    "put a NULL reg after each line => open a new line after each line
    '<,'>g/^/put_
:s/\(\s*\n\)\+/\r\r/
    '<,'>g/^/exec "normal! gqq"
    '<,'>s/^\s*
endf

"version2: {{{3
function! FormatBook(...) range
    "put a NULL reg after each line => just create a new line
    exec a:firstline . "," . a:lastline . "g/^/put_"

"   this second exec sees "normal!" and "gqq" not as strings
"   but as variables.  That is what is causing the error message you
"   reported previously.
"   You don't need that second "exec" at all
"    :a:firstline . "," . a:lastline . "g/^/exec " . "normal! gqq"
    set tw=80 nopaste
    "gqq each line
    exec a:firstline . "," . a:lastline . "g/^/normal! gqq"

endf
"
com! -range=% -nargs=* FormatBook :<line1>,<line2>call FormatBook(<f-args>)
nmap ,bb :FormatBook<CR>

"version3: {{{3
"this works, and much shorter
"  for any line breaks,including those preceding with spaces/tab, 
"    just turn them into 2 and only 2 line breaks, this will:
"    a) insert an empty line bet 2 adjoining ones, 
"    b) remove extra empty lines in the case of more than 1 empty lines in bet
"   gq the selected visual range
:vn ,bf :s/\(\s*\n\)\+/\r\r/<CR>gvgq:nohls<CR>

"issue left, how to put V3 , in V2 (mor scalable)?

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"centralized folders for vim auxilary files {{{2

"(2013-05-16) use a dedicated place for all the auxilary files
"https://github.com/docwhat/homedir-vim/blob/master/vimrc/.vimrc
" Backups, undos, and swap files
"-----------------------------------------------------------------------------
" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
"^= 'prepends' value to a string list (.= 'appends' value)
set backupdir^=~/.vim/backup//
set backupdir^=./.vim-backup//
set backup
" Prevent backups from overwriting each other. The naming is weird,
" since I'm using the 'backupext' variable to append the path.
" So the file '/home/docwhat/.vimrc' becomes '.vimrc%home%docwhat~'
if has("autocmd")
  autocmd BufWritePre * let &backupext = substitute(expand('%:p:h'), '/', '%', 'g') . '~'
endif


if has("macunix")
  set backupskip+=/private/tmp/*
endif

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
"  set undolevels=1000         " maximum number of changes that can be undone
  set undoreload=1000000        " maximum number lines to save for undo on a buffer reload
endif


"toggle tabs/buffers--- {{{2

let g:lasttab = 1
"nmap ,l :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

"extend to buffer switch in 1-tab case
function! s:switch()
  if tabpagenr("$") > 1
    exe "tabnext" g:lasttab
  else
    "without this, any change in a buffer will 
    "generate a warning before switch to other buffer
    set hidden
    b #
  endif
endfunction
noremap <silent> ,l :call <SID>switch()<enter>


"hack the gf to be compatible with buffer {{{2
"(2013-12-13) gmail
function! s:nswitch (n)
  if tabpagenr("$") > 1
    if a:n > 0
        exe "tabnext" a:n
    else
        exe "tabnext"
    endif
  else
    if a:n > 0
        exe "buffer" a:n
    else
        exe "bn"
    endif
  endif
endfunction

noremap <silent> gt :<C-U>call <SID>nswitch(v:count)<CR>


"   if v:count == 0
"       map gt :bn<cr>
"       map gT :bp<cr>
"   else
"       map gt :<C-U>exec "b" . v:count<cr>
"   endif


""ranger support {{{2
""Tue Dec  4 11:26:05 EST 2012
""gmail thread: how to execute ranger from gvim
""
""help tempname(): 
"" The result is a String, which is the name of a file that
"" doesn't exist. It can be used for a temporary file.  The name
"" is different for at least 26 consecutive calls.  Example:  
"" For Unix the list of directories is: $TMPDIR, /tmp,current-dir, $HOME.
""
""readfile(tmpfile): 
"" read the tmpfile into a list, containing (in the
"" 1st & only line in the list, ...[0]) real filename of currently
"" selected file in ranger
"" edit ... then read/edit the real file in the buffer
""man ranger:
""--choosefile=targetfile
""    Allows you to pick a file with ranger.  This changes the behavior so that when
""    you open a file, ranger will exit and write the absolute path of that file into
""    targetfile.
""
""--choosefiles=targetfile
""    Allows you to pick multiple files with ranger.  This changes the behavior so
""    that when you open a file, ranger will exit and write the absolute paths of all
""    selected files into targetfile, adding one newline after each filename.
""
""--choosedir=targetfile
""    Allows you to pick a directory with ranger.  When you exit ranger, it will
""    write the last visited directory into targetfile.


"
"
"fun! RangerChooser(...)
" 
""define a temp var to store name of a temp file, which was use
""by ranger to store name of the file to be opened
""
"    let tmpfile = tempname() 	"generate a temp name,like '/tmp/vuZJYgI/2'
"
""determine what dir that ranger will start with
"    if a:0 > 0 && a:1 != "" 	"if supplied an non-empty argument by user
"	let dir = a:1 		"use it
"    elseif expand("%") 		"otherwise, if current buffer has a name
"	let dir = expand("%:p:h") "use dir containing curr buffer
"    else 			"otherwise(there is no curr named buffer)
"	let dir = "." 		"use current working dir
"    endif
"
""call ranger: ranger --choosefile=tmpfile $dir
""start from 'dir', assign selected filename to temp file named 'tmpfile'
"    exe 'silent !ranger --choosefile='.tmpfile dir
"    if filereadable(tmpfile) 	"if tempfile is readable
"	"read tmpfile for the filename, then edit in curr buff
"	exe 'edit' readfile(tmpfile)[0]
"	call delete(tmpfile) 	"delete the tmpfile
"    endif
"    redraw!
"endfun
"map ,r :call RangerChooser()<CR>
"command -nargs=? RangerChooser call RangerChooser("<args>")

"Ranger support 2 {{{2
"add one more feature: remember where ranger left off and start fr there
if !exists("Rangerdir")
    let RangerDir='.'
endif


fun! RangerChooser(...)
 
"define a temp var to store name of a temp file, which was use
"by ranger to store name of the file to be opened
"
    let tmpfile = tempname() 	"generate a temp name,like '/tmp/vuZJYgI/2'
    let tmpdir = tempname() 	"for file and dir, for ranger use

"determine what dir that ranger will start with
    if a:0 > 0 && a:1 != ""	"if supplied an non-empty folder
	let dir = a:1 		"from user command,use it anyway
    elseif g:RangerDir != '.' 	"elseif no dir provided, and prev dir get changed 
	let dir = g:RangerDir 	"(by ranger),continue with it
    elseif expand("%") 		"elseif no folder provided,no change from last time
	let dir = expand("%:p:h") "but current buffer has a name,
                                "use the dir containing curr buffer
    else 			"otherwise(there is no even curr named buffer)
	let dir = '.' 		"start from current working dir
    endif

"call ranger: ranger --choosefile=tmpfile $dir
"start from 'dir', when exit, 
"save selected filename/foldername to temp file named 'tmpfile'/'tmpdir'
    exe 'silent !ranger --choosefile='.tmpfile '--choosedir='.tmpdir dir
    "read and save the real folder name from the saved temp file
    if filereadable(tmpdir) 	"if tempfile is readable
	"read tmpfile for the filename, then edit in curr buff
	"attach liternal '""' quotes to support space in dirname
	let g:RangerDir='"'.readfile(tmpdir)[0].'"'
	call delete(tmpdir) 	"delete the tmpfile
    endif

    "retrieve and save the real file name out of the saved temp file
    if filereadable(tmpfile) 	"if tempfile is readable
	"read tmpfile for the filename, then edit in curr buff
	exe 'edit' readfile(tmpfile)[0]
	call delete(tmpfile) 	"delete the tmpfile
    endif
    redraw!
endfun

nmap ,r :call RangerChooser()<CR>
command! -nargs=? RangerChooser call RangerChooser("<args>")

nmap ,R :!ranger-cd<CR>

"folding {{{2
"yank only non-folded texts
function! CopyNonFolded() range  	"function w/ range
let lnum= a:firstline 			"record start of range
let buffer=[]  				"init a var to store text
while lnum <= a:lastline  		"start from 1st line in the range
     if (foldclosed(lnum) == -1)  	"if not in fold
         let buffer += getline(lnum, lnum) "store that literal line
         let lnum += 1  		"check next line
     else  				"otherwise (step on a fold)
         let buffer += [ foldtextresult(lnum) ] "just store that 'displayed' text
         let lnum = foldclosedend(lnum) + 1 "and increase lnum to the last line 
     endif  				"of the fold,+1 (go out of curr fold)
endwhile 

"1) open a buffer, append the list into the buffer
"top new  				"open a new buff at top
"set bt=nofile  				"buftype: not a file (no use?)
"call append(".",buffer)  		"append(put) what we got in the buffer
"0d_  					"delete curr line(same as dd)
"2) ping: put the list into registers directly
let @"=join(buffer,"\n") . "\n"
let @+=@"
let @a=@"
endfu 

com! -range=% CopyFolds :<line1>,<line2>call CopyNonFolded() 
"ping, visual map
vn "" :CopyFolds<CR>

nn <expr>  l  foldclosed(".")>=1 ? "zo<C-L>" : "l" 
nn <expr>  0  foldclosed(".")>=1 ? "zo<C-L>" : "0" 
nn zo zo<C-L>
nn zO zO<C-L>
nn zc zc<C-L>
nn zC zC<C-L>
nn za za<C-L>
nn zA zA<C-L>
nn zx zxzc<C-L>
nn zX zX<C-L>
nn zm zm<C-L>
nn zM zM<C-L>
nn zr zr<C-L>
nn zR zR<C-L>
nn zi zi<C-L>


"statusline {{{2

"disable this to test with vim-airline
""a more informative status line
"set statusline=%F%m%r%h%w\ [FMT=%{&ff}]\ [TP=%Y]\ [ASC=\%03.3b]\ [X=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]

" A statusbar function, that provides a visual scrollbar (courtesy of A.Politz)
func! STL()
  let stl = '%f [%{(&fenc==""?&enc:&fenc).((exists("+bomb") && &bomb)?",B":"")}%M%R%H%W] %y [%l/%L,%v] [%p%%]'
  let barWidth = &columns - 65 " <-- wild guess
  let barWidth = barWidth < 3 ? 3 : barWidth

  if line('$') > 1
    let progress = (line('.')-1) * (barWidth-1) / (line('$')-1)
  else
    let progress = barWidth/2
  endif

  " line + vcol + %
  let pad = strlen(line('$'))-strlen(line('.')) + 3 - strlen(virtcol('.')) + 3 - strlen(line('.')*100/line('$'))
  let bar = repeat(' ',pad).' [%1*%'.barWidth.'.'.barWidth.'('
        \.repeat('-',progress )
        \.'%2*0%1*'
        \.repeat('-',barWidth - progress - 1).'%0*%)%<]'

  return stl.bar
endfun

hi def link User1 DiffAdd
hi def link User2 DiffDelete

"disable this under cygwin - cursor lag issue
if !has("win32unix")
    "disable this and test with vim-airline plugin
    "set stl=%!STL()
endif

"movetab:a-left/right: {{{2
" Usage:
"   Use <M-PageUp> and <M-PageDown> to move the current tab anathor position.

"set tagpagemax=15
"
function! MoveCurrentTab(value)
  if a:value == 0
    return
  endif
  let move = a:value - 1
  let move_to = tabpagenr() + move
  if move_to < 0
    let move_to = 0
  endif
  exe 'tabmove '.move_to
endfunction

" this is must simpler...(2017-03-07) 
function! MoveCurrentTab(value)
  exe 'tabmove '.a:value
endfunction

nmap <silent> <M-left> :call MoveCurrentTab('-1')<Esc>
"map <silent> <M-right> :call MoveCurrentTab(1)<Esc>
nmap <silent> <M-right> :call MoveCurrentTab('+1')<Esc>

"doc render (doc/rtf/html/pdf/ps) {{{2
"doc to text
autocmd BufReadPre *.doc set ro
autocmd FileReadPre *.doc set ro
autocmd BufReadPre *.doc set hlsearch!
autocmd BufReadPost *.doc %!antiword "%"
autocmd FileReadPost *.doc %!antiword "%"

"rtf to text
autocmd BufReadPre *.rtf set ro
autocmd FileReadPre *.rtf set ro
autocmd BufReadPre *.rtf set hlsearch!
autocmd BufReadPost *.rtf %!catdoc -w "%"
autocmd FileReadPost *.rtf %!catdoc -w "%"

"html2text file.html
"(2020-06-03) disable to edit remark.js
"autocmd BufReadPre *.*html set ro
"autocmd FileReadPre *.*html set ro
"autocmd BufReadPre *.*html set hlsearch!
"autocmd FileReadPre *.*html set hlsearch!
"autocmd BufReadPost *.*html %!html2text "%"
"autocmd FileReadPost *.*html %!html2text "%"

"testing for file.htm
autocmd BufReadPre *.*htm set ro
autocmd FileReadPre *.*htm set ro
autocmd BufReadPre *.*htm set hlsearch!
autocmd FileReadPre *.*htm set hlsearch!
autocmd BufReadPost *.*htm %!html2text "%"
autocmd FileReadPost *.*htm %!html2text "%"

"pdf2text file.pdf -
autocmd BufReadPost *.*pdf %!pdftotext "%" -
autocmd FileReadPost *.*pdf %!pdftotext "%" -

"ps2txt file.ps -
autocmd BufReadPost *.*ps %!ps2txt "%"
autocmd FileReadPost *.*ps %!ps2txt "%"

"pcap, tcpdump
autocmd BufReadPost *.*pcap %!tcpdump -SvvtttXXnr "%"
autocmd FileReadPost *.*pcap %!tcpdump -SvvtttXXnr "%"

"recursive grep {{{2
"http://learnvimscriptthehardway.stevelosh.com/chapters/34.html
nnoremap ,gr :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap ,gr :<C-U>call <SID>GrepOperator(visualmode())<cr>

nmap ,gp :read !ssh svl-jtac-tool02 "query-pr -F "

function! s:GrepOperator(type)
    let saved_unnamed_register = @@

    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    silent execute "grep! -R " . shellescape(@@) . " ."
    copen

    let @@ = saved_unnamed_register
endfunction

"asciidoc--- {{{2
"set ft to asciidoc(with concern support) and turn off conceal
"nmap (not nn), since ',S' need to be expanded in previous map(set syntax=ON)
"set bufhidden is necessary for Nrrw's :NR! to work properly
nmap ,ta 
    \:set bufhidden<CR>
    \:set ft=asciidoc<CR>
    \:set conceallevel=0<CR>
    \:set syntax=ON<CR>

nmap ,tA 
    \:set bufhidden<CR>
    \:set ft=asciidoc2<CR>
    \:set syntax=ON<CR>

nmap ,tv 
    \:set ft=vimwiki<CR>
    \:set syntax=ON<CR>


"linethrough--- {{{3
nn ,ag ^i[line-through]#<esc>g_a#<esc>
nn ,ao ^i[overline]#<esc>g_a#<esc>

"underline a line, or visually selected words
nn ,au ^i[underline]#<esc>g_a#<esc>
vn ,au s[underline]#<c-r>"#<esc>


"mark red current word
nn ,ar :s/\(<c-r>=expand("<cword>")<cr>\)/[red]#\1#/g<CR>
"not working
"vn ,ar mboma<esc>i[red]#<esc>'ba#<esc>gvo
"mark red visual selected words
vn ,ar s[red]#<c-r>"#<esc>

nn ,ab :s/\(<c-r>=expand("<cword>")<cr>\)/[blue]#\1#/g<CR>
nn ,aR ^i[red]#<esc>g_a#<esc>

"Bullet list--- {{{3
"from book <<hacking vim>>
function! BulletList()
    let lineno = line(".")
"    call setline(lineno, " * " . getline(lineno))
"ping: rm the heading space, no need
    call setline(lineno, "* " . getline(lineno))
endfunction
vnoremap ,aB :call BulletList()<CR>

"numbered list--- {{{3

function! NumberList() range
    "set line numbers in front of lines
    let beginning=line("'<")
    let ending= line("'>")
    let difsize = ending-beginning +1
"    let pre = ''
"ping, remove the heading space, no need
    let pre = ''
    while (beginning <= ending)
	if match(difsize, '^9*$') == 0
	    let pre = pre . ' '
	endif
"	call setline(ending, pre . difsize . ".\t" . getline(ending))
"ping, add a ".", making it asciidoc
	call setline(ending, pre . difsize . ".\t" . getline(ending))
	let ending=ending-1
	let difsize=difsize-1
    endwhile
endfunction
vnoremap ,an :call NumberList()<CR>

"making an asciidoc block {{{3
"nn ,al 0o----<cr>----<cr><esc>k
"(2018-02-21) this might be more frequently used
"nn ,al {i----<esc>}i----<esc>o
"(2019-06-04) make it always jump back to beginning in the end
nn ,al {i----<esc>}i----<esc>{
nn ,aS {i****<esc>}i****<esc>{

"vn ,al mboma<esc>O<esc>0i----<esc>'bo<esc>0i----<esc>gvo
vn ,al mboma<esc>O<esc>0i----<esc>'bo<esc>0i----<esc>gv
vn ,aS mboma<esc>O<esc>0i****<esc>'bo<esc>0i****<esc>gv

nn ,aL 0o....<cr>....<cr><esc>k
vn ,as mboma<esc>O<esc>0i[source, sh, linenums]<cr>----<esc>'bo<esc>0i----<esc>gvo

nn ,aq {i[subs="quotes"]<cr>----<esc>}i----<esc>{
nn ,aQ o<c-o>0
	\[qanda]<cr>
	\.Q&A<cr>
	\Question 1::<cr>
	\Answer 1<cr>
	\<esc>2k

"v1
"![virtio](./extracted-media-ContrailPerformanceGuidev3.2/media/image29.png)
"image::extracted-media-ContrailPerformanceGuidev3.2/media/image29.png[]
nn ,ai 0dwwcw::<esc>A<BS>[]<esc>
"v2:
"![virtio](./extracted-media-ContrailPerformanceGuidev3.2/media/image29.png)
"image::extracted-media-ContrailPerformanceGuidev3.2/media/image29.png[virtio]
nn ,ai ^dw"act]image<esc>wcw::<esc>A<BS>[<c-r>a]<esc>

nn ,am o<c-o>0
    	    \ifdef::basebackend-html[[subs="quotes"]]
    	    \<cr>
    	    \ifdef::basebackend-html[....]
	    \<cr>
	    \<esc>

nn ,aM o<c-o>0
    	    \ifdef::basebackend-html[....]
	    \<cr>
	    \<esc>2k

nn ,aN o<c-o>0
    	    \[NOTE]<cr>
    	    \===============================<cr>
    	    \<cr>
	    \<cr>
	    \===============================<cr>
	    \<esc>2k

"making a markdown python block {{{3
"(Tue 29 Oct 2019 09:37:27 AM DST) 
""basic, has to put cursor at beginning line of a block
"nn ,pl {i```python<esc>}i```<esc>{
""better, work for any newly inserted block,cursor can be anywhere
"nm ,pl ,vo<esc>O```python<esc>gvo<esc>o```<esc>gvo<esc>
"best, remove extra gv command to make screen less flashing
nm ,pl ,v<esc>'<O```python<esc>'>j0i```<cr><esc>'<
vn ,pl mboma<esc>O<esc>0i```python<esc>'bo<esc>0i```<esc>gv
vn ,pl mboma<esc>O<esc>0i```python<esc>'bo<esc>0i```<esc>gv

nm ,pc ,v<esc>'<O"""<esc>'>j0i"""<cr><esc>'<
vn ,pc mboma<esc>O<esc>0i"""<esc>'bo<esc>0i"""<esc>gv
vn ,pc mboma<esc>O<esc>0i"""<esc>'bo<esc>0i"""<esc>gv

"insert a table {{{3
"
nn ,at o<cr><c-o>0
    \\|=================================================<cr>
    \<cr>
    \<cr>
    \\|=================================================<cr>
    \<esc>5k

nn ,aT o<cr><c-o>0
    \[options="header,footer"]<cr>
    \\|=================================================<cr>
    \<cr>
    \<cr>
    \\|=================================================<cr>
    \<esc>6k



"asciidoc fold headers, {{{3
"copy from: "https://gist.github.com/1035030
" folding for Markdown headers, both styles (atx- and setex-)
" http://daringfireball.net/projects/markdown/syntax#header
"
" this code can be placed in file
"   $HOME/.vim/after/ftplugin/markdown.vim
"
"the v1 & v2 failed to work well, with efforts to support 2 lines title
"  too much complexities need to be handeded
"  need to exclude list/examples
"
"  .abc
"  --------
"  list block
"  --------
"
"the v3 simply ignore 2 lines title, making it much easy to implement
"
"
"
"version 1 {{{4
"func! Foldexpr_markdown(lnum) 		"ping: comments
"    let l1 = getline(a:lnum) 		"get current line
"    if l1 =~ '^\s*$' 			"if it's an empty line
"        return '=' 			"continue previous fold level
"    endif
"    let l2 = getline(a:lnum+1) 		"get the next line
"    if  l2 =~ '^=\+\s*$' 		"if next line is =...
"        return '>1' 			"(this is a 2 line H1)start level 1
"    elseif l2 =~ '^-\+\s*$' 		"if next line is -...
"        return '>2' 			"(this is a 2 line H2)start level 2
"    "ping:change code:for asciidoc change from '#' to '='
"    " elseif l1 =~ '^#' 		
"    elseif l1 =~ '^=' 			"if start with =..
"        "return '>'.matchend(l1, '^#\+') "ping:for asciidoc change #->=
"        return '>'.matchend(l1, '^=\+') "set fold level to count of '=' 
"    					"(which is equals to 'index' after the last match of '=')
"    else 				"otherwise (any lines not start with =)
"        return '=' 			"keep previous foldlevel
"    endif
"endfunc
 
"version 2 {{{4
"func! Foldexpr_markdown(lnum) 		"ping: comments
"check one(1st) line
"    let l1 = getline(a:lnum) 		"get current line
"    let l1len = len(a:lnum)
"    if l1 =~ '^\s*$' 			"if it's an empty line
"        return '=' 			"continue previous fold level
"    endif

"check 2nd line for 2 lines heading
"    let l2 = getline(a:lnum+1) 		"get the next line
"    let l2len = len(a:lnum+1)
    "for --- 2 line title
"    if  l2 =~ '^[=-]\+\s*$' 		"if next line is =... or -...
"	if l1len < l2len -3 || l1len > l2len + 3
"	    return '='
"	elseif l1 =~ '^\s\+' 		"if title text is not hard agaist left margin
"	    return '='
"	elseif l1 =~ '^\.' 		"if prev line is a title(.abc...) of a example or list block
"	    "return 'a1' 		"add one level fold
"	    return '=' 			"continue with same fold level
"	else
"	    return '>1' 		"(this is a 2 line H1)start level 1
"	endif

"check 1st or whatever line for 1 line heading
    "ping:change code:for asciidoc change from '#' to '='
    "elseif l1 =~ '^#' 		
"    if l1 =~ '^=\+\s\+\S\+' 			"if start with =..
"        "return '>'.matchend(l1, '^#\+') "ping:for asciidoc change #->=
"        return '>'.matchend(l1, '^=\+') "set fold level to count of '=' 
    					"(which is equals to 'index' after the last match of '=')
					"
"none heading
"    else 				"otherwise (any lines not start with =)
"        return '=' 			"keep previous foldlevel
"    endif
"endfunc

"version 3 {{{4
func! Foldexpr_asciidoc(lnum) 		"ping: comments
    let l1 = getline(a:lnum) 		"get current line
    let l1len = len(a:lnum)
    if l1 =~ '^\s*$' 			"if it's an empty line
        return '=' 			"continue previous fold level
    endif

    if l1 =~ '^=\+\s\+\S\+' 		"if start with =..
        "return '>'.matchend(l1, '^#\+') "ping:for asciidoc change #->=
        return '>'.matchend(l1, '^=\+') "set fold level to count of '=' 
    					"(which is equals to 'index' after the last match of '=')
					"
    else 				"otherwise (any lines not start with =)
        return '=' 			"keep previous foldlevel
    endif
endfunc

"setl will work for 1st file, then tab 2ndfile.txt won't work!
"set foldexpr=Foldexpr_asciidoc(v:lnum)
"set foldmethod=expr
"
"ping, start from nofold(so fast), if need start(toggle) fold on expr
nnoremap ,tf :call ToggleFoldexpr()<CR>
function! ToggleFoldexpr()
  if &foldexpr == 'Foldexpr_asciidoc(v:lnum)'
    setl foldmethod=manual
    setl foldexpr=
  else
    setl foldmethod=expr
    setl foldexpr=Foldexpr_asciidoc(v:lnum)
  endif
endfunction

"asciidoc doc user command {{{3
"###########asciidoc doc generation user command, by ping:START##############

if !exists("MyAsciidocDestDir")
    let MyAsciidocDestDir = "/Dropbox/temp-transfer/"
endif


"asciidoc to html
command! Asciidoc2Html :w|!asciidoc -n
    \ -a toc -a toclevels=6 
    \ -o ~/Dropbox/temp-transfer/%:t:r.html 
    \ -a max-width=95em -a pygments
    \ -a iconsdir=~/bin/asciidoc-8.6.8/images/icons/ 
    \ "%"

"seems ok, not fully tested
command! Asciidoc2Htmlhelp1 :w|!a2x 
    \ -f htmlhelp 
    \ --verbose --no-xmllint 
    \ --icons-dir=~/bin/asciidoc-8.6.8/images/icons/
    \ -a source-highlighter=pygments 
    \ -a pygments
    \ -D ~/Dropbox/temp-transfer/ "%"

"fully tested
command! Asciidoc2Htmlhelp2 :w|!asciidoc -n
    \ -b docbook -o ~/Dropbox/temp-transfer/%:t:r.xml "%";
    \ xsltproc -o ~/Dropbox/temp-transfer/%:t:r/%:t:r.hhp
    \ --nonet ~/bin/asciidoc-8.6.8/docbook-xsl/htmlhelp.xsl
    \ ~/Dropbox/temp-transfer/%:t:r.xml
"    \ > ~/Dropbox/temp-transfer/%:t:r_htmlhelp.hhp
"    \ c:/Program\ Files/HTML\ Help\ Workshop/hhc.exe htmlhelp.hhp
"NOTE: seq matters for xsltproc params! put -o before anything else!


"asciidoc to a standalone html contain JS,image,embedded CSS
"$asciidoc -a data-uri -a icons -a toc -a max-width=55em article.txt
"report warning/errors about can't find ./images/icons/callouts/x.png ...
command! Asciidoc2Hdatauri :w|!asciidoc -n
    \ -a data-uri -a icons -a toc -a toclevels=6 
    \ -a iconsdir=~/bin/asciidoc-8.6.8/images/icons/ 
    \ -o ~/Dropbox/temp-transfer/%:t:r_datauri.html 
    \ "%"
"asciidoc to HTML5 with toc at left column
"asciidoc -b html5 -a icons -a toc2 -a theme=flask article.txt
command! Asciidoc2Html5toc2 :w|!asciidoc -n
    \ -b html5 -a icons -a toc2 
    \ -a toclevels=6 -a theme=flask 
    \ -o ~/Dropbox/temp-transfer/%:t:r_html5toc2.html 
    \ "%"
"unix man page
command! Asciidoc2Man1 :w|!a2x 
    \ --doctype manpage --format manpage 
    \ --verbose --no-xmllint 
    \ --icons-dir=~/bin/asciidoc-8.6.8/images/icons/
    \ -alitdd='&\#45;&\#45;'
    \ -D ~/Dropbox/temp-transfer/ "%"

command! Asciidoc2Man2 :w|!asciidoc 
    \ -d manpage -b docbook -o ~/Dropbox/temp-transfer/%:t:r.xml "%";
    \ xsltproc --nonet ~/bin/asciidoc-8.6.8/docbook-xsl/manpage.xsl 
    \ ~/Dropbox/temp-transfer/%:t:r.xml


"asciidoc to (via DocBook XML) to a single XHTML file.
" asciidoc -b docbook asciidoc.txt
" xsltproc --nonet /etc/asciidoc/docbook-xsl/xhtml.xsl asciidoc.xml > asciidoc.html
"control toc level (def 2), seq of param matters here!
"http://www.sagehill.net/docbookxsl/TOCcontrol.html
"put --param ahead of --nonet
"also see FAQ 9, "generate.section.toc.level 1" generate toc for each section/chapter
command! Asciidoc2Hdocbook :w|!asciidoc -n
    \ -b docbook 
    \ -o ~/Dropbox/temp-transfer/%:t:r.xml "%";
    \ xsltproc 
    \ --param generate.section.toc.level 1 
    \ --param toc.section.depth 2 
    \ --nonet /etc/asciidoc/docbook-xsl/xhtml.xsl 
    \ ~/Dropbox/temp-transfer/%:t:r.xml 
    \ > ~/Dropbox/temp-transfer/%:t:r_docbook.html

"convert current buffer to a fixed filename
"command! Asciidoc2Hstdin !asciidoc -a toc -a toclevels=6 -o ~/Dropbox/temp-transfer/temp-stdin.html -
"convert from stdin to html with a given name
command! -nargs=1 -range=% Asciidoc2Hstdin !asciidoc -n -a toc -a toclevels=6 -o ~/Dropbox/temp-transfer/<q-args> - 

com! -range=% -nargs=* Asciidoc2Stdout :<line1>,<line2>!asciidoc
    \ -a numbered 
    \ -a toclevels=4
    \ -a icons
    \ -a iconsdir=/home/ping/bin/asciidoc-8.6.8/images/icons
    \ -a data-uri
    \ -o -
    \ -a showcomments
    \ -a leveloffset=-1@ 
    \ -b html5 -d book -a toc2 -

"chunked xhtml
command! Asciidoc2Hchunked :w|!
    \ mkdir ~/Dropbox/temp-transfer/%:t:r;
    \ asciidoc -b docbook 
    \ -o ~/Dropbox/temp-transfer/%:t:r/%:t:r.xml "%";
    \ xsltproc -o ~/Dropbox/temp-transfer/%:t:r/ 
    \ --param toc.section.depth 6 
    \ --nonet /etc/asciidoc/docbook-xsl/chunked.xsl  
    \ ~/Dropbox/temp-transfer/%:t:r/%:t:r.xml 
    \ > ~/Dropbox/temp-transfer/%:t:r/%:t:r_xhtml.html;

"asciidoc to odt
command! Asciidoc2Odt :w|!asciidoc -n -b odt -o ~/Dropbox/temp-transfer/%:t:r.fodt "%"
"asciidoc to odp
command! Asciidoc2Odp :w|!asciidoc -n -b odp -o ~/Dropbox/temp-transfer/%:t:r.fodp "%"
"asciidoc to pdf:a2x
command! Asciidoc2PDF1 :w|!a2x 
    \ -f pdf 
    \ --verbose --no-xmllint 
    \ --icons-dir=~/bin/asciidoc-8.6.8/images/icons/
    \ -a source-highlighter=pygments 
    \ -a pygments -d book
    \ -D ~/Dropbox/temp-transfer/ "%"

"overided with asciidoctor-pdf way (2015-12-11) 
nmap ,ap :w !a2x 
    \ -f pdf 
    \ --verbose --no-xmllint 
    \ --icons-dir=~/bin/asciidoc-8.6.8/images/icons/
    \ -a source-highlighter=pygments 
    \ -a pygments -d book
    \ -D ~/Dropbox/temp-transfer/ "%"

"asciidoc to pdf:fop
command! Asciidoc2PDF2 :w|!
    \ asciidoc -b docbook -d book
    \ -o ~/Dropbox/temp-transfer/%:t:r_fop.xml "%";
    \ xsltproc --nonet /etc/asciidoc/docbook-xsl/fo.xsl 
    \ 	~/Dropbox/temp-transfer/%:t:r_fop.xml 
    \ 	> ~/Dropbox/temp-transfer/%:t:r_fop.fo;
    \ fop ~/Dropbox/temp-transfer/%:t:r_fop.fo 
    \ 	~/Dropbox/temp-transfer/%:t:r_fop.pdf;
"    \ rm ~/Dropbox/temp-transfer/%:t:r_fop.fo ~/Dropbox/temp-transfer/%:t:r_fop.xml
"

"generate a book
"a2x -f pdf -d book --verbose --no-xmllint temp-asciidoc.txt 
command! Asciidoc2Book :w|!a2x 
    \ -f pdf -d book 
    \ --verbose --no-xmllint 
    \ -D ~/Dropbox/temp-transfer/ "%"

"generate a epub
"command! Asciidoc2Epub :w|!a2x -f epub -d book --epubcheck --stylesheet temp-epubtest.css --resource .ttf=application/x-font-ttf --resource LiberationSerif-Regular.ttf -D ~/Dropbox/temp-transfer/ "%"
command! Asciidoc2Epub :w|!a2x 
    \ -f epub -d book 
    \ --stylesheet temp-epubtest.css 
    \ --resource .ttf=application/x-font-ttf 
    \ --resource LiberationSerif-Regular.ttf 
    \ --icons-dir=~/bin/asciidoc-8.6.8/images/icons/
    \ -D ~/Dropbox/temp-transfer/ "%"

"asciidoc to slidy html slides
command! Asciidoc2Slidy :w|!asciidoc -n
    \ --backend slidy 
    \ -a iconsdir=~/bin/asciidoc-8.6.8/images/icons/
    \ -o ~/Dropbox/temp-transfer/%:t:r_slidy.html "%"

"convert asciidoc to all known(and working) format
command! Asciidoc2A call s:Asciidoc2All(MyAsciidocDestDir)

"function to create a subfolder
function! s:EnsureDirExists(dir)
    if !isdirectory(a:dir)
	if exists("*mkdir")
	    call mkdir(a:dir,'p')
	    echo "Created directory: " . a:dir
	    return 1
	else
	    echo "mkdir function not supported"
	    echo "Please create directory: " . a:dir
	    return 0
	endif
    else
	echo "no need to create, directory exists"
	return 1
    endif
endfunction

"call s:EnsureDirExists($HOME . '/.vim_backup')

"function to convert asciidoc to all known format
function! s:Asciidoc2All(destdir)
"this will generate alot of docs, use it when necessary
    
    let filebasename = "%:t:r"
    let subfolder = a:destdir . expand (filebasename)
    "abort if dir creation failed
    if !s:EnsureDirExists(subfolder)
	echom "dir" . subfolder . " creationg failed"
	return 0
    endif
    let fullnameroot = subfolder . "/" . filebasename

    "html
    let tohtml = "w|!asciidoc -a toc -a toclevels=6 	-o" . fullnameroot . ".html \"%\""
    "odt
    let tofodt = "w|!asciidoc -b odt 			-o" . fullnameroot . ".fodt \"%\""
    "odp"
    let tofodp = "w|!asciidoc -b odp 			-o" . fullnameroot . ".fodp \"%\""
    "pdf a2x"
    let topdf_a2x  = "w|!a2x -f pdf --verbose --no-xmllint -D" . subfolder . "/". " \"%\""

    "fop pdf
    let topdf_xml = "w|!asciidoc -b docbook -o" . 	      fullnameroot . "_docbook.xml \"%\""
    let topdf_fo = "xsltproc --nonet /etc/asciidoc/docbook-xsl/fo.xsl " . fullnameroot . "_docbook.xml >" . fullnameroot . "_xsl.fo"
    let topdf_fop1 = "fop " . fullnameroot . "_xsl.fo " . fullnameroot . "_fop.pdf"
    let topdf_fop = topdf_xml . ";" . topdf_fo .";" . topdf_fop1
    let toslidy = "w|!asciidoc --backend slidy -o" . fullnameroot . "_slidy.html \"%\""

    "rm the intermediate files (xml, fo, etc)
    "let rmdocbook_xml = "!rm " . fullnameroot . "_docbook.xml"
    "let rmxsl_fo = "!rm " . fullnameroot . "_xsl.fo"

    silent execute tohtml
    silent execute tofodt
    silent execute tofodp
    silent execute topdf_a2x
    silent execute topdf_fop
    silent execute toslidy

    silent execute rmdocbook_xml
    silent execute rmxsl_fo

endfunction

"###########asciidoc use command, END##############



"asciidoc new maps--- {{{3
"phaseI: simple vmap, no arguments pass {{{4
"nn ,ah :w !asciidoc -o ~/Dropbox/temp-transfer/temp.html -a toc - 
"    \ \| gnome-open ~/Dropbox/temp-transfer/temp.html<CR> 
"nn ,ah :w !asciidoctor -o '%:r.html' -<CR><CR>
nn ,ah :w !asciidoctor -a data-uri -o '%:r.html' - &<CR><CR>
"asciidoctor --backend docbook --out-file - $INPUT_ADOC.adoc|pandoc --from docbook --to docx --output $INPUT_ADOC.adoc.docx &
nn ,aw :!asciidoctor --backend docbook -a word --out-file - % <bar> pandoc --from docbook --to docx --output '%.docx' & <CR><CR>
nn ,ap :w !asciidoctor -a data-uri -r asciidoctor-pdf -b pdf -a allow-uri-read -
vn ,ah :!asciidoc -o - - 
vn ,ah :w !asciidoctor - -o ~/Dropbox/temp.html
"(2020-05-31) trying asciidoctor-revealjs to create html5 slides
nn ,ap :!bundle exec asciidoctor-revealjs % <CR><CR>

"map but don't return in the end, leave chance to change
nmap ,aH :w !asciidoc
    \ -a numbered -a toc2
    \ -a toclevels=4
    \ -a icons
    \ -a iconsdir=/home/ping/bin/asciidoc-8.6.8/images/icons
    \ -a imagesdir=~/Dropbox/temp-transer/
    \ -a data-uri
    \ -o ~/Dropbox/temp-transfer/temp.html 
    \ -a showcomments
    \ -a max-width=100em
    \ -a leveloffset=-1@ 
    \ -b html5 -d book -&

"(Mon 22 Feb 2016 11:33:46 PM EST) 
nmap ,aH :w !asciidoctor
    \ -a numbered
    \ -a toc=left
    \ -a toclevels=4
    \ -a icons=font
    \ -a data-uri
    \ -a max-width=100em
    \ -a last-update-label\!
    \ -a nofooter
    \ -b html5 -d book
    \ -o ~/Dropbox/temp-transfer2/temp.html 
    \ -a leveloffset=-1@ 
    \ -a showcomments -&

"(2014-01-28) not done yet
"func! ascii2gragh()
"    :w !shaape -o ~/temp-transfer/asciiart-images.png -s 0.6 -&
"    let case=
"    :exec "normal o<esc>O![topo]({{ site.BASE_PATH }}/images/topo-" . case . ".png \"topo\")"
"endfunc

"this is not frequently used anymore (2017-10-16) 
"map ,ai :w !shaape -o ~/juniperblog/images/topo-.png -s 0.6 -&
"map ,ai :w !shaape -o /mnt/public_html/myblog/images/topo-temp.png -s 0.8 -&

"phaseII: user command, with arguments {{{4
"pass a leveloffset to user command
function! A2H(...) range 		"func with range and varible args	
    let first = a:firstline 		"range bound was carried via these 2
    let last  = a:lastline
"note:
" cancatenation operation:'.', must have a space before/after
" don't forget the original space seperator in external commands: ' -',not '-'
"    exec "w !asciidoc -v -o ~/Dropbox/temp-transfer/temp.html -a leveloffset=" . a:1 . ' -'
" per qq lane, this is more readable
    exec printf("%d,%dw !asciidoc -v -o ~/Dropbox/temp-transfer/temp.html -a leveloffset=%d -", first, last, a:1)
endfunc

"note:
" user command with :
" * range support : -range COMMAND :<line1>,<line2>call ...
"       %: define default value - whole file
"       <line1>,<line2> is mandatory
" * args support: -nargs - number of args
"       -nargs=* : number of args vary
" * function call, with args: <f-args>
" 
" Usage:
" :A2H -1
"
com! -range=% -nargs=* A2H :<line1>,<line2>call A2H(<f-args>)
"vn ,aH :A2H 1<CR>

"nmap ,f :call Mydict()<CR><C-W>h

"asciidoc file detection debug message knob--- {{{3

"let MyAsciidocDebug = 1

"log2asciidocClean {{{3

"not reliable yet
command! Log2AsciidocClean call Log2AsciidocClean()
function! Log2AsciidocClean()

"clean the file
    "remove some special CH, like 
    :%s#\r\|\s\=\(\|\)##
    :%s#\(\|\)##
    "turn  into delete (fritzophrenic@gmail.com)
    :g//while getline('.') =~ '[^]' | s/[^]//g | endwhile

endfunc

"log2asciidocTop {{{3
command! Log2AsciidocTop call Log2AsciidocTop()
function! Log2AsciidocTop()
"add asciidoc markup == and <<top>> for every command
    :%s/^\(\S\S\+.\{0,40}\S#\s*[^:]\+\|slot \d\d\=->\S\+.*\|->.*\|\*-\*-\*-\*-\*-\)$/\r== \1\r\r<<top>>\r/
    :setlocal foldmethod=expr
endfunc

"log2asciidocCleanIndent {{{3
command! Log2AsciidocIndent call Log2AsciidocIndent()
function! Log2AsciidocIndent()
"indent between <<top>> and next command
    "skip the 1st comand
    ":execute "normal! gg" . '/^\(\S\S\+.\{0,40}\S#\s*[^:]\+\|slot \d\d\=->\S\+.*\|->.*\|\*-\*-\*-\*-\*-\)' . "\<cr>" ."j"
    "this doesn't work well, always report some errors
    ":g/<<top>>/+1,/^== \(\S\S\+.\{0,40}\S#\s*[^:]\+\|slot \d\d\=->\S\+\|->.\+\|\*-\*-\*-\*-\*-\)/-1 >
   
    "testing this...
    let maxline = line("$")
    "start from top line
    normal! gg
    while line(".") <= maxline
	"(from where we left) search <<top>>, mark the line right below it as x
	execute "normal! /top\<cr>"
	echom "match 1 found #" . line(".")
	normal! j0mx
	echom "mark x is #" . line("'x")
	"(from 1st mark found), look for cmd line, mark the line right above it as y
	"execute "normal!" . ' /^== \(\S\S\+.\{0,40}\S#\s*[^:]\+\|slot \d\d\=->\S\+.*\|->.*\|\*-\*-\*-\*-\*-\)' . "\<cr>"
	execute "normal!" . " /^== \<cr>"
	echom "match 2 found #" . line(".")
	normal! k0my
	echom "mark y is #" . line("'y")
	"fold the output capture
	execute "'x,'y>"
	"procede from the line after the command line
	normal! jj0
	"check current line#
	echom "new line to proceed after folding is " . line('.')
	"break if reach bottom
	if line(".") >= maxline
	    echom "reaching end of file"
	    break
	endif
	if line("'x") == line("'y")
	    echom "x,y marks stays the same,sth wrong or reaching end of file"
	    normal! G0my
	    execute "'x,'y>"
	    break
	endif
	echom "our position of this round is ".line(".")
    endwhile
endfunc

"log2asciidocList {{{3
command! Log2AsciidocList call Log2AsciidocList()
function! Log2AsciidocList()
"adding listing block mark
  "add ---- below <<top>>
  :%s@\(<<top>>\)@\1\r\r----\r@
  "skip first command
  :execute "normal! gg" . '/^\(\S\S\+.\{0,40}\S#\s*[^:]\+\|slot \d\d\=->\S\+.*\|->.*\|\*-\*-\*-\*-\*-\)' . "\<cr>" ."j"
  "start from 2nd command, add ---- before command
  :.,$s@^== \(\S\S\+.\{0,40}\S#\s*[^:]\+\|slot \d\d\=->\S\+.*\|->.*\|\*-\*-\*-\*-\*-\)$@\r----\r\1\r@
  "add one more last asciidoc delimitor to end of file
  :execute "normal! Go----" . "\<cr>\<esc>"

endfunc

"test1 {{{3

command! Test1 call Log2AsciidocTest1()
function! Log2AsciidocTest1()
    let maxline = line("$")
    echom "total line# is ".maxline
    echom "start process from line# ".line(".")
    normal! gg
    while line(".") <= maxline
       "(from where we left) search <<top>>, mark the line right below it as x
       execute "normal! /top\<cr>"
	echom "match 1 found #" . line(".")
	normal! j0mx
	echom "mark x is #" . line("'x")
	"(from 1st mark found), look for cmd line, mark the line right above it as y
"	execute "normal!" . ' /^== \(\S\S\+.\{0,40}\S#\s*[^:]\+\|slot \d\d\=->\S\+.*\|->.*\|\*-\*-\*-\*-\*-\)' . "\<cr>"
	execute "normal!" . " /^==\<cr>"
	echom "match 2 found #" . line(".")
	normal! k0my
	echom "mark y is #" . line("'y")
	"fold the output capture
	execute "'x,'y>"
	"procede from the line after the command line
	normal! jj0
	"check current line#
	echom "new line to proceed after folding is " . line('.')
	"break if reach bottom
	if line(".") >= maxline
	    echom "reaching end of file"
	    break
	endif
	if line("'x") == line("'y")
	    echom "x,y marks stays the same,sth wrong or reaching end of file"
	    normal! G0my
	    execute "'x,'y>"
	    break
	endif
	sleep 3
    endwhile
endfunc

"test2 {{{3

command! Test2 call Log2AsciidocTest2()
function! Log2AsciidocTest2()
    let maxline = line("$")
    echom "total line# is ".maxline
    echom "start process from line# ".line(".")

    let n = 1                         "starting from 1st line
    let x = 0
    let y = 0

    while n <= maxline
	let line = getline(n)           "get a line
	echom "get ".line." at #".n
	if line =~ '<<top>>'      	"searching '<<top>>'
	    echom "match 1 found @ #" . n
	    let x = n
	else
	endif

	if line =~ '^== '      		"searching asciidoc header'
	    echom "match 2 found @ #" . n
	    let y = n
	else
	endif

	if y > x
	    "fold the output capture
	    echom "folded from line ". x . " to line " . y
	    sleep 20
	    execute "x,y>"
	endif
"	if y == x
"	    echom "same mark line,skip"
"	endif
"	if y < x
"	    echom "y < x"
"	endif
"
	let n = n + 1
    
    endwhile
endfunc

"markdown--- {{{2
"
nn ,mc <esc>O<esc>0C<!--<esc>jo<esc>0C--><esc>k
nn ,mC <esc>o<esc>0C<!--<cr>--><esc>k

"work for most cases
"nn ,mt <esc>OTABLE OF CONTENT<enter><enter>* auto-gen TOC:<enter>{:toc}<enter><enter>- - -<enter><esc>  
"this even works for markdown plugin (which has some magic to auto format markdown
"list when hit return)
nn ,mt <esc>OTABLE OF CONTENT<enter><enter>* auto-gen TOC:<enter><esc>d0i{<esc>d0i<right>:toc}<enter><enter>- - -<enter><esc>dd
nn ,mr <esc>O<enter>---<enter><enter><c-o>mr<enter><enter>---<enter><c-o>'r  

nn ,mi <esc>O![packet flow]({{ site.BASE_PATH }}/images/asciiart-images.png "packet flow")<enter><esc>

nn ,mh :w !markdown_py -x toc > '%:r.html'<CR><CR>

"jekyll--- {{{2
"

"(optional)turn off all additional backup files
"nn ,nf <esc>:set nobackup<CR>:set noudf<CR>:set noswf<CR>

"replaced by extended ,l
"nn ,p :bp<enter>
"nn ,n :bn<enter>

"set nobackup noudf noswf

"yaml highlight {{{3
"http://www.codeography.com/2010/02/20/making-vim-play-nice-with-jekylls-yaml-front-matter.html
"this doesn't work
"function! Jekyll()
"    execute "autocmd BufNewFile,BufRead " . g:jekyll_path . "/* syn match jekyllYamlFrontmatter /\\%^---\\_.\\{-}---$/ contains=@Spell"
"endf

"this works
function! JekyllY()
    unlet b:current_syntax
    syntax include @Yaml syntax/yaml.vim
    syntax region yamlFrontmatter start=/\%^---$/ end=/^---$/ keepend contains=@Yaml,@Spell
    let b:current_syntax='markdown'
endf

nmap ,jy :call JekyllY()<CR>,nf

"jekyll.vim vars and maps {{{3
"https://github.com/csexton/jekyll.vim/
"ping: 
if !exists('g:jekyll_post_created')
  let g:jekyll_post_created = "%Y %b %d %X"
endif

"constant: personal blog
if !exists('g:jekyll_path')
    "let g:jekyll_path="~/mytest-project/jekyll-site/pinggit.github.com"
    "(2016-03-26) change for diff folder in vm (10.85.47.3)
    let g:jekyll_path="~/Dropbox/Apps/FarBox/simplerlife"
    "let g:jekyll_post_suffix = "textile" 
    "let g:jekyll_post_published = "false"
endif

"constant: juniper blog
if !exists('g:jekyll_path2')
    " let g:jekyll_path2="~/mytest-project/jekyll-site/blog.clone"
    " let g:jekyll_path2="~/mytest-project/jekyll-site/juniperblog"
    " running new jekyll over cygwin (2018-02-18) 
    " this one has no tags
    " let g:jekyll_path2="~/mytest-project/jekyll-site/juniperblog2"
    " this one has tags
    " let g:jekyll_path3="~/juniperblog3"
    let g:jekyll_path2="~/juniper.blog"
endif

"constant: pynb blog
if !exists('g:jekyll_path4')
    let g:jekyll_path4="~/pynbgang.blog"
endif

"constant: kbreview blog (personal tech)
if !exists('g:jekyll_path5')
    let g:jekyll_path5="~/Dropbox/kbreview"
endif

"save the path change
if !exists('g:jekyll_currentpath')
    let g:jekyll_currentpath=g:jekyll_path2
endif

function! JekyllSetBlogID(blogid) "{{{3
    let g:jekyll_blogid=a:blogid
    if g:jekyll_blogid==1       "personal blog
        let g:jekyll_currentpath=g:jekyll_path
        let g:jekyll_upload="github"
    elseif g:jekyll_blogid==2   "juniper blog
        let g:jekyll_currentpath=g:jekyll_path2
        let g:jekyll_upload="rsync"
    elseif g:jekyll_blogid==3   "juniper blog
        let g:jekyll_currentpath=g:jekyll_path3
        let g:jekyll_upload="rsync"
    elseif g:jekyll_blogid==4   "pynbgang
        let g:jekyll_currentpath=g:jekyll_path4
        let g:jekyll_upload="github"
    elseif g:jekyll_blogid==5   "kbreview
        let g:jekyll_currentpath=g:jekyll_path5
        let g:jekyll_upload="github"
    else
        let g:jekyll_currentpath=g:jekyll_path3
        let g:jekyll_upload="rsync"
    endif
    exec "lcd" . g:jekyll_currentpath
endf

command! -nargs=1 JekyllSetBlogID call JekyllSetBlogID(<q-args>)

nn ,ji :JekyllSetBlogID 2


if !exists('g:jekyll_title')
  let g:jekyll_title = "unnamed"
endif

if !exists('g:jekyll_title_pattern')
  let g:jekyll_title_pattern = "[ '\"]"
endif

if !exists('g:jekyll_post_suffix')
  let g:jekyll_post_suffix = "markdown"
endif

if !exists('g:jekyll_prompt_tags')
  let g:jekyll_prompt_tags = "python, leetcode"
endif

if !exists('g:jekyll_prompt_categories')
  let g:jekyll_prompt_categories = "tech"
endif

if !exists('g:jekyll_asciidoc_insertyaml')
    "turn off yaml, currently page looks ugly after enabling this
    let g:jekyll_asciidoc_insertyaml = 1
endif

if !exists('g:jekyll_template')
  let g:jekyll_template = [""]
endif

if !exists('g:jekyll_post_published')
  let g:jekyll_post_published = "true"
endif

if !exists('g:jekyll_upload')
  let g:jekyll_upload= "github"
endif

if !exists('g:jekyll_blogid')
  let g:jekyll_blogid= 3
endif

if !exists('g:jekyll_disqus_template')
    let g:jekyll_disqus_template="~/Dropbox/Apps/FarBox/simplerlife/disqus-template.txt"
endif

nn        ,jb  :JekyllBuild<CR>
nn        ,js  :JekyllPost<CR>
nn        ,jp  :JekyllPostRange<CR>
nn        ,jl  :JekyllList<CR>
nn <expr> ,jL  RangerChooser(g:jekyll_path . "/_posts") <bar> sleep 3

"checkout and post
"com! -nargs=1 JPost execute '!rake post title=<q-args>' | e YOUR_FILE


"Asciidoc to Jekyll--- {{{3

function! s:esctitle(str) "{{{4
  let str = a:str
  let str = tolower(str)
  let str = substitute(str, g:jekyll_title_pattern, '-', 'g')
  let str = substitute(str, '\(--\)\+', '-', 'g')
  let str = substitute(str, '\(^-\|-$\)', '', 'g')
  return str
endfunction


function! JekyllTemplate() "{{{4
    "always build template per current data:
    "if g:jekyll_template == ''
    let tags = input("use previous tag? [" . 
        \g:jekyll_prompt_tags . 
        \"](y/NEW TAG):",'y')
    if tags == 'y'
        let tags = g:jekyll_prompt_tags "try, save it
    else
        if tags != ''
            let g:jekyll_prompt_tags=tags
        endif
    endif

    let categories = input("use previous categories? [" . 
        \g:jekyll_prompt_categories . 
        \"](y/NEW CATEGORIES):" , 'y')
    if categories == 'y'
        let categories = g:jekyll_prompt_categories "try, save it
    else
        if categories != ''
            let g:jekyll_prompt_categories=categories
        endif
    endif

    let created = g:jekyll_post_created

    if created == "epoch"
        let created = localtime() 
    elseif created != ""
        let created = strftime(created)
    endif

    "let template = ["---", "layout: post", "title: \"" . g:jekyll_title . "\"", "published: " . published]
    let template = ["---", "layout: post", "title: \"" . g:jekyll_title . "\""]
    if created != ""
      call add(template, "created:  "  . created)
    endif
    if tags != ""
      call add(template, "tags: [" . tags . "]")
    endif
    if categories != ""
      call add(template, "categories: [" . categories . "]")
    endif

    let published = g:jekyll_post_published
    call add(template, "published: " . published )
    call extend(template,["---", ""])

    return template
endf

"(02/20/2013) publish a asciidoc-generated html blog
"function! A2J(leveloffset, title)
function! JekyllPrefixYamlHeader() "{{{4
    let template=JekyllTemplate()
    let err1 = append(0, template)
endf

nmap ,jy :call JekyllPrefixYamlHeader()<CR>

function! JekyllAppendDisqus() "{{{4
    let template4disqus=g:jekyll_disqus_template
    exec "normal Go\<CR>\<CR>\<esc>"
    exec "read" . template4disqus
endf

nmap ,jd :call JekyllAppendDisqus()<CR>

function! A2J(...) range "{{{4

    "initialization
    let os=-1
    let title=g:jekyll_title
    "not sure if better than html backend
    let format="html"
    let toc="-a toc2"

    let g:lasttab = tabpagenr()

    "ping:yank the selected texts
    exe a:firstline . "," . a:lastline . "yank"

    "if 1st params is not given (provided 0 params), ask for it
    if a:0 == 0

        let os=input("use default offset?" . '[' . os . ']' . "(y/0/-1/-2/-3/..):",'y')
        if os == 'y'
            let os = -1
        endif
    "if 1 param is given, use it as offset
    else
        let os=a:1
    endif

    "if 2nd param is not given, ask for it
    if a:0 <= 1 
        let title=input("want to use previous/default title?" . 
            \'[' . g:jekyll_title . ']' . "(y/NEW TITLE):" ,
            \'y')
        if title=='y'
            let title=g:jekyll_title
        else
            if title != ""
                let g:jekyll_title = title
            endif
        endif

    else
        let title=a:2
        let g:jekyll_title = title
    endif

    "if 3rd param is not given, ask for it
    if a:0 <= 2
        let supported_backend="1-html,2-html5,3-blogger"
        let format_number=input("use the current asciidoc backend format?" . 
            \'[' . format . ']' . 
            \supported_backend . ':', 'y')
        if format_number==1
            let format="html"
        elseif format_number==2
            let format_number="html5"
        elseif format_number==3
            let format="blogger"
        else
        endif

    elseif a:0 == 3
        let format=a:3
    else
        echo "too much parameters: max is 3"
    endif

    let toc=input("want to use toc?[0:no-toc,1:toc,2:toc2]" , "2")
    if toc=='0'
        let toc=''
    elseif toc=='1'
        let toc='-a toc'
    elseif toc=='2'
        let toc='-a toc2'
    else
    endif

    if title == ''
      let title = input("Post title (better) not be empty: ")
      if title != ''
          let g:jekyll_title = title
      endif
    endif
        
    if title != ''
        let g:jekyll_title = title
        let file_name = strftime("%Y-%m-%d-") . 
           \s:esctitle(title)

        "exe "tabedit " . g:jekyll_path . "/_posts/" . file_name

"       let path=input("use default/previous path?" . '[' . g:jekyll_path . ']' . "(y/<NEW PATH>):",'y')
"       if path=='y'
"           let path=g:jekyll_path
"       else
"           if path != ''
"               let g:jekyll_path=path
"           endif
"       endif

        let path=input("use default/previous path?" . '[' . g:jekyll_path . ']' . "(y/n):",'y')
        if path=='y'
            let g:jekyll_blogid=1
            let path=g:jekyll_path
        elseif path=='n'
            let path=input("use default/previous path?" . '[' . g:jekyll_path3 . ']' . "(y/<NEW PATH>):",'y')
            if path=='y'
                let path=g:jekyll_path3
                let g:jekyll_blogid=2
                let g:jekyll_upload='rsync'
            endif
            let g:jekyll_currentpath=path
        endif

        let full_name = path . "/_posts/" . file_name . "." . "html"
        "let g:AsciidocCmd = ":0,\$w !asciidoc 
        let g:AsciidocCmd = ':' . a:firstline . ',' . a:lastline . 
            \"w !asciidoc 
            \-a numbered " . toc . " " . "
            \-a toclevels=4 
            \-a iconsdir=/home/ping/bin/asciidoc-8.6.8/images/icons 
            \-a icons -a data-uri -a showcomments 
            \-a max-width=85em -a theme=volnitsky 
            \-o " . full_name . " " . "
            \-a leveloffset=" . os . "@" . " " . "
            \-b " . format . " -d book - "

            "\-o " . "'" . full_name . "'" . " " . "

        echo "\nthe following CLI will be executed\n" g:AsciidocCmd

        let isSure=input("are you sure?(y/n):",'y')
        if isSure == 'y'
            exec g:AsciidocCmd

            "save the original selected texts and prepend with yaml
            let full_name_asciidoc = path . "/_posts/" . file_name . "." . "txt"
            exe "tabnew " . full_name_asciidoc
            call JekyllPrefixYamlHeader()
            exe "normal! p"
            "call JekyllAppendDisqus()
            exec "wq!"

            "try: insert template(yaml front end) in html file
            exe "tabnew " . full_name
            exe "normal u"

            "prepend yaml in HTML. since yaml insertion in asciidoc generated
            "html make it looks ugly, make it optional
            if g:jekyll_asciidoc_insertyaml
                call JekyllPrefixYamlHeader()
            endif

            "append disqus code in HTML
            "let err2 = append(line('$'), "# THE END")
            "call JekyllAppendDisqus()

            "save the new webpage and quit ,then go back to original tab
            "exec "wq!"
            "exec "tabn " . g:lasttab
            
        else
            "this doesn't work to user cmd. good for expr map
            return g:AsciidocCmd

        endif
    endif
endf

"todo: 
    "gmail thread: vim script: repeat(\<left>)
    "http://vim.wikia.com/wiki/Find_in_files_within_Vim
    "need to archive same with ,ja, when user say no, pop cmds but no exec..
    "it looks this is not possible (or sth I don't know)
"command! -nargs=* A2J :call A2J(<f-args>)
com! -range=% -nargs=* A2J :<line1>,<line2>call A2J(<f-args>)

"map <expr> ,ja ':' . A2J(-1, "new_post") . repeat("\<left>", 24)
"no need ':' since the func will return a ':'
"support:               the option of presenting CLIes for user selection
"don't support:         don't work for visual range
"nmap <expr> ,jA A2J(-1) . repeat("\<left>", 24)
nmap <expr> ,jA A2J(-1) . "\<c-b>" . repeat("\<delete>",3)
"support:               all non-range or range
"don't support:         returning CLIes for user selection
nmap ,ja :A2J


"JekyllGit {{{4

"this works, but too ugly
"nn ,gg :!git add -A .;git commit -m "msg: ";git push origin master"
"            \<left><left><left><left><left><left><left>
"            \<left><left><left><left><left><left><left>
"            \<left><left><left><left><left><left><left>
"            \<left><left><left><left><left>

"this is much better
"todo: need to save original path and restore after git finished
"select right folder, lcd into it, then pop up git commands for user's selection
"let g:jekyll_currentpath=g:jekyll_path
function! JekyllGit(commitmsg)
    let current_blogid=input("is current blog ID " . g:jekyll_blogid. '? (y/n/newID)' , 'y')
    if current_blogid=='y'
        let current_blogid=g:jekyll_blogid
    endif

    if current_blogid=='n'
        if g:jekyll_blogid==1
            let current_blogid=2
        elseif g:jekyll_blogid==2
            let current_blogid=1
        else
        endif
    endif

    if current_blogid==1
        let g:jekyll_upload='github'
        let current_path=g:jekyll_path
    elseif current_blogid==2
        let g:jekyll_upload='rsync'                 "set proper upload method
        let current_path=g:jekyll_path2
    else
    endif

    let g:jekyll_blogid=current_blogid

    "this doesn't work
    ":lcd current_path
    "this works
    let original_path=getcwd()
    exec "lcd" . current_path
    echo "original path" . '[' . original_path . ']' . "is saved." "\n"
    echo "lcd into new path" . '[' . current_path . ']' . "\n"

    let commitmsg=a:commitmsg

    let commitmsg = input ("use last msg[" . g:jekyll_title . "]?[y/NEW TITLE]:" , 'y')
    if commitmsg == 'y'
        let commitmsg = g:jekyll_title
    else
        let g:jekyll_title = commitmsg
    endif

    if g:jekyll_blogid==1
        let generate='sleep 1'
        "let upload="git push origin master"
        let upload="git push blog master"
    elseif g:jekyll_blogid==2
        "let generate='jekyll --safe --no-auto'
        let generate='jekyll build --safe -I'
        let chmod="chmod -R 755 " . current_path . "/_site"
        let generate=generate . ";" . chmod

        "todo: -a is a bit slow, --size-only is faster?
        let upload="
        \rsync --delete -qrlczPp --chmod=a+rwx,g+rx,o+r " . 
        \current_path . 
        \"/_site/ pings@svl-jtac-tool02:public_html/blognew/"

        "verbose:       rsync --delete -vvrlczP " . 
        "quiet:         rsync --delete -qrlczP " . 
        
    else
        "let upload="git push origin master"
        let upload="git push blog master"
    endif


    let GitCmd="!
        \git add -A .;
        \git commit -m \"" . 
        \commitmsg . "\";" . generate . ";" . upload . '&'
        "\repeat("\<left>", 30)

    "return to original path
    "exec "lcd" . original_path

    "there must be at least one ':' in returned cmds!
    return ":" . GitCmd
endf

"command! -nargs=* JekyllGit call JekyllGit(<q-args>)
command! -nargs=* JekyllGit exec JekyllGit(<q-args>)
nn <expr> ,jg JekyllGit(g:jekyll_title) . repeat("\<left>", 24)

func! JekyllThemeSelect()
    let supported_themes="\n  1-twitter\n  2-holligan\n  3-the-minimum\n  4-the-program\n  5-dinky\n  6-mark-reid\n  7-tom\n"
    let theme=input("use which theme?" . "\n[" . supported_themes . "]\n" . "(1/2/3/..):",'1')
    if theme==1
        let theme="twitter"
    elseif theme==2
        let theme="hooligan"
    elseif theme==3
        let theme="the-minimum"
    elseif theme==4
        let theme="the-program"
    elseif theme==5
        let theme="dinky"
    elseif theme==6
        let theme="mark-reid"
    elseif theme==7
        let theme="tom"
    else
    endif

    let theme_change_cmd=":!rake theme:switch name=\"" . theme . "\""
    return theme_change_cmd

endf
nn <expr> ,jt JekyllThemeSelect()

"quick publish the post (git push + w3m review)
"pending issues:
"  don't know how to prompt&wait for user input
nmap ,jP :
     \exec JekyllGit("g:jekyll_title") . repeat("\<left>", 24) <Bar>
     \!w3m http://pinggit.github.com
     \<CR>

" modified original jekylly plugin {{{3
" purpose of moving here is for portability - just one vimrc file!
" Code {{{4
" Exit quickly when:
" - this plugin was already loaded (or disabled)
" - when 'compatible' is set
"   ping
"   vars {{{5
if (exists("g:loaded_jekyll") && g:loaded_jekyll) || &cp
  "this will cause re-source of vimrc won't work!
  "finish
endif
let g:loaded_jekyll = 1

let s:cpo_save = &cpo
set cpo&vim

if !exists('g:jekyll_path')
  let g:jekyll_path = $HOME . "/src/blog"
endif

if !exists('g:jekyll_post_suffix')
  let g:jekyll_post_suffix = "markdown"
endif

if !exists('g:jekyll_post_published')
  let g:jekyll_post_published = "true"
endif

if !exists('g:jekyll_post_created')
  let g:jekyll_post_created = ""
endif

if !exists('g:jekyll_title_pattern')
  let g:jekyll_title_pattern = "[ '\"]"
endif

"try: use to save the giving title for later(git) use
if !exists('g:jekyll_title')
  let g:jekyll_title = ""
endif

if !exists('g:jekyll_prompt_tags')
  let g:jekyll_prompt_tags = ""
endif

if !exists('g:jekyll_prompt_categories')
  let g:jekyll_prompt_categories = ""
endif

if !exists('g:jekyll_template')
  let g:jekyll_template = [""]
endif

function! s:error(str)  "{{{5
  echohl ErrorMsg
  echomsg a:str
  echohl None
  let v:errmsg = a:str
endfunction

function! s:escvar(r)   "{{{5
  let r = fnamemodify(a:r,':~')
  let r = substitute(r,'\W','\="_".char2nr(submatch(0))."_"','g')
  let r = substitute(r,'^\d','_&','')
  return r
endfunction

function! s:Detect(filename)  "{{{5
  let fn = substitute(fnamemodify(a:filename,":p"),'\c^file://','','')
  let sep = matchstr(fn,'^[^\\/]\{3,\}\zs[\\/]')
  if sep != ""
    let fn = getcwd().sep.fn
  endif
  let ofn = ""
  " Look through the parent folders to see if a _posts folder exists, if so
  " assume this is a jekyll project.
  while fn != ofn
    if isdirectory(fn . "/_posts")
      return s:BufInit(fn)
    endif
    let ofn = fn
    let fn = fnamemodify(fn,':h')
  endwhile
  return 0
endfunction

function! s:BufInit(path)   "{{{5
  let b:jekyll_root = a:path
  if !exists("g:autoloaded_jekyll") && v:version >= 700
    runtime! autoload/jekyll.vim
  endif
  " FIXME: This should be handled by the autocmd, but we don't set jekyll_root
  " until after that autocmd is run, so it won't match.
  syn match Comment /\%^---\_.\{-}---$/ contains=@Spell
endfunction

" Commands
function JekyllBuild(args)  "{{{5
  let s:origdir = getcwd()
  exe "cd " . g:jekyll_path
  exe "!jekyll " . a:args
  exe "cd " . s:origdir
  unlet s:origdir
endfunction
command! -nargs=* JekyllBuild :call JekyllBuild(<q-args>)

function JekyllList()   "{{{5
  "exe "e " . g:jekyll_path . "/_posts"
  "ping
  exe "e " . g:jekyll_currentpath . "/_posts"
  "if g:jekyll_blogid==1
  "  "exe "vnew " . g:jekyll_path . "/_posts"
  "  exe "edit " . g:jekyll_path . "/_posts"
  "elseif g:jekyll_blogid==3
  "  "exe "vnew " . g:jekyll_path3 . "/_posts"
  "  exe "edit " . g:jekyll_path3 . "/_posts"
  "else
  "endif
endfunction
command! -nargs=0 JekyllList :call JekyllList()

function JekyllPost(title)  "{{{5
"open a new buffer (no tab), prefix a yaml header, no content will be inserted
  let published = g:jekyll_post_published
  let created = g:jekyll_post_created
  let tags = g:jekyll_prompt_tags
  let categories = g:jekyll_prompt_categories

  if created == "epoch"
    let created = localtime() 
  elseif created != ""
    let created = strftime(created)
  endif

  if a:title!=''
    let title = a:title
    let g:jekyll_title = title
  else
    let title=input("want to use previous/default title?" . 
        \'[' . g:jekyll_title . ']' . "(y/NEW TITLE):" ,
        \'y')
    if title=='y'
        let title=g:jekyll_title
    else
        if title != ""
            let g:jekyll_title = title
        endif
    endif
  endif

  "if tags != ""
  "try
  if tags == ""
    let tags = input("Post tags: ")
    if tags != ''
      let g:jekyll_prompt_tags = tags     "try, save it
    endif
  endif
  "if categories != ""
  "try
  if categories == ""
    let categories = input("Post categories: ")
    if categories != ""
      let g:jekyll_prompt_categories = categories
    endif
  endif
  if title != ''
    "try: save the final title, for later (git) use
    let g:jekyll_title = title
    let file_name = strftime("%Y-%m-%d-") . s:esctitle(title) . "." . g:jekyll_post_suffix
    echo "Making that post " . file_name
    exe "e " . g:jekyll_currentpath . "/_posts/" . file_name

    let template = ["---", "layout: post", "title: \"" . title . "\"", "published: " . published]
    if created != ""
      call add(template, "created:  "  . created)
    endif
    if tags != ""
      call add(template, "tags: [" . tags . "]")
    endif
    if categories != ""
      call add(template, "categories: [" . categories . "]")
    endif

    "the empty line before --- line is important, make Voom skip the yaml
    "header in the sidetree - not to identify it as a title
    call extend(template,["", "---", ""])

    "testing: adding TOC automatically(Thu 04 Feb 2016 06:32:12 AM EST)  
    let toc =  ["TABLE OF CONTENT", "", "* auto-gen TOC:", "{:toc}", "", "- - -"]
    call extend(template, toc)

    "ping: save the template
    let g:jekyll_template=template

    let err = append(0, template)
  else
    call s:error("You must specify a title")
  endif
endfunction
command! -nargs=? JekyllPost :call JekyllPost(<q-args>)

"ping
function JekyllPostRange(title) range   "{{{5
"open a new tab (no tab), 
"prefix a yaml header, 
"copy visual selected range of text and put as blog content

"function JekyllPostRange(title)
  let published = g:jekyll_post_published
  let created = g:jekyll_post_created
  let tags = g:jekyll_prompt_tags
  let categories = g:jekyll_prompt_categories

  if created == "epoch"
    let created = localtime() 
  elseif created != ""
    let created = strftime(created)
  endif

  let title = a:title
  if title == ''
    if g:jekyll_title != ""
      if input("use last title[" . g:jekyll_title . "]?[y/n]",'y') == 'y'
        let title=g:jekyll_title
      else
        let title = input("Post new title: ")
      endif
    else
      let title = input("Post title: ")
    endif

  endif
  
  "if tags != ""                        "try: this looks wrong?
  if tags == ""
    let tags = input("Post tags: ")
    if tags != ''
      let g:jekyll_prompt_tags = tags     "try, save it
    endif
  endif

  
  "if categories != ""                  "try: this looks wrong?
  if categories == ""
    let categories = input("Post categories: ")
    if categories != ""
      let g:jekyll_prompt_categories = categories     "try, save it
    endif
  endif
  if title != ''
    "try: save the final title, for later (git) use
    let g:jekyll_title=title

    let file_name = strftime("%Y-%m-%d-") . s:esctitle(title) . "." . g:jekyll_post_suffix
    echo "Making that post " . file_name
    "ping:yank the selected texts
    exe a:firstline . "," . a:lastline . "yank"

    exe "tabedit " . g:jekyll_currentpath . "/_posts/" . file_name

    let template = ["---", "layout: post", "title: \"" . title . "\"", "published: " . published]
    if created != ""
      call add(template, "created:  "  . created)
    endif
    if tags != ""
      call add(template, "tags: [" . tags . "]")
    endif
    if categories != ""
      call add(template, "categories: [" . categories . "]")
    endif
    call extend(template,["---", ""])

    let err = append(0, template)
    
    "ping: save the template
    let g:jekyll_template=template
    "ping:paste selected range texts after template
    normal! p

  else
    call s:error("You must specify a title")
  endif
endfunction
command! -range=% -nargs=* JekyllPostRange :<line1>,<line2>call JekyllPostRange(<q-args>)

" Initialization {{{4
"(2018-03-01) avoid VimEnter to speed up vim start, these does not seem to be useful
"augroup jekyllPluginDetect
"  autocmd!
"  autocmd BufNewFile,BufRead * call s:Detect(expand("<afile>:p"))
"  autocmd VimEnter * if expand("<amatch>") == "" && !exists("b:jekyll_root") | call s:Detect(getcwd()) | endif
"  autocmd Syntax html,xml,markdown,textile if exists("b:jekyll_root") | syn match Comment /\%^---\_.\{-}---$/ contains=@Spell | endif
"augroup END

" }}}1

let &cpo = s:cpo_save

" vim:set ft=vim ts=2 sw=2 sts=2:
"sdcv-startdict console version {{{2
"http://www.linuxidc.com/Linux/2011-01/31182.htm
"some said use following script and replace 'dict' to 'sdcv' is also OK
"http://www.vim.org/scripts/script.php?script_id=3287
"
function! Mydict()
  let expl=system('sdcv -n ' .
        \  expand("<cword>"))
  windo if
        \ expand("%")=="diCt-tmp" |
        \ q!|endif
  40vsp diCt-tmp
  setlocal buftype=nofile bufhidden=hide noswapfile
  setlocal nonumber
  1s/^/\=expl/
  1
endfunction
"nmap ,f :call Mydict()<CR><C-W>h
"ping: seems better not jump back, good for quick view and close
"nmap ,tS :call Mydict()<CR>

if !exists('g:wn_dict')
    let g:wn_dict = 1000
endif

"ping, make ,F to open horizon win, don't jump back
function! MydictH()
  let expl=system('sdcv -n ' .
        \  expand("<cword>"))
  windo if
        \ expand("%")=="diCt-tmp" |
        \ q!|endif
  10sp diCt-tmp
  "ping: remember the new win# for later use (when need to close)
  let g:wn_dict=winnr()

  setlocal buftype=nofile bufhidden=hide noswapfile
  1s/^/\=expl/
  1
endfunction
nmap ,ts :call MydictH()<CR>

function! MydictClose()
    let wn_curr=winnr()
    exec g:wn_dict."wincmd w"
    close
    exec wn_curr."wincmd w"
endfunction
nmap ,qt :call MydictClose()<CR>
nn ,qp :read !ssh svl-jtac-tool02 "query-pr --format='\"\%s\t\%s\t\%s\"Number originator Synopsis' --expr 'customer ~ \"ATT.*_LAB\"' \| sort -nr \| grep -i bfd"
"go/change curr heading--- {{{2
"http://learnvimscriptthehardway.stevelosh.com/chapters/16.html
"doesn't work well for asciidoc
"onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
"onoremap ah :<c-u>execute "normal! ?^==\\+\r:nohlsearch\rg_vk0"<cr>
"
onoremap ih :<c-u>execute "normal! ?^==\\+ \\+.*$\r:nohlsearch\rkvg_"<cr>
onoremap ah :<c-u>execute "normal! ?^==\\+ \\+.*$\r:nohlsearch\rg_vk0"<cr>
"
"insert a timestamp in curr cursor place(and return to normal)
"(02/24/2013) change format to def jekyll(01/15/2001 to 2001-01-15)
nn ,Di i(<esc>"=strftime("%Y-%m-%d")<CR>pa)<space><esc>
nn ,Da a(<esc>"=strftime("%Y-%m-%d")<CR>pa)<space><esc>
nn ,di i(<esc>"=strftime('%c')<CR>pa)<space><esc>
nn ,da a(<esc>"=strftime('%c')<CR>pa)<space><esc>
ino <F11> (<C-R>=strftime("%Y-%m-%d")<CR>)<space>
"this doesn't work in tmux
ino <C-F11> (<C-R>=strftime('%c')<CR>)<space>

"diff {{{2
"curr buff with disk
"this is not quite good tool, especially for a large,or even encryted file.

function! DiffWithFileFromDisk()
    let filename=expand('%')
    let diffname = filename.'.fileFromBuffer'
    "ping
    let diffname = '/tmp/'.diffname
    exec 'saveas! '.diffname
    diffthis
    vsplit
    exec 'edit '.filename
    diffthis
endfunction

nnoremap ,C :call DiffWithFileFromDisk()<cr>

nn ,dp ]cdp
nn ,do ]cdo

"capture ex command output to a new tab buffer--- {{{2
"http://vim.wikia.com/wiki/Capture_ex_command_output
"
function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)
nn ,tp :TabMessage 

"conditional map of h--- {{{2

"gmail thread map a key to "conditionally" override built-in behavior
"disabled (2014-10-29) , often close buffers accidentally
function! <SID>Maph()
  "if cursor stays in leftmost[virtcol(".")==1] and upmost[line(".")==1] 
  "  corner of the buffer
  "if line(".") == 1 && virtcol(".") == 1
  if virtcol(".") == 1
  "this also works
  "if col(".") == 1
    "return ":q\r"
    "not only quit current win, but 'pairing' win, if has
    return ",qv"
  else
    return "h"
  endif
endfunction

"nmap <expr> h <SID>Maph()

"keep the cursor vertically centered. {{{2
"http://vim.wikia.com/wiki/Make_search_results_appear_in_the_middle_of_the_screen
set scrolloff=3
"nn n nzt
"nn N Nzt

"some setting for juniper config files {{{2
nn ,fl :set ft=jel<CR>
nn ,fc :set ft=jec<CR>
nn ,fj :set foldmethod=marker<CR>:set foldmarker=\ {,},\ [,]<CR><c-l>
nn ,em :?#show ?,/# /g/classifier-group.*\n\s*[1-9]\d* packets/.,+1p
nn ,en :?#show ?,/# /g/slot (2).*\n.*\n.*control bus reset/p <bar> +2p

"nn ,>  0/{<cr>mj%mu%jmj'ukmu>'j:nohls<cr>
nn ,i  0/{<cr>ma%dd'addzc
nn ,i  0/{<cr>mj%mu%jmj'ukmu>'j:nohls<cr>
"nn ,i  0/{\\|\[<cr>mj%mu%jmj'ukmu>'j:nohls<cr>

"move done task to ArchiveDone section {{{2
"phaseI(01/07/2013)
"vn ,ad d/ArchiveDone<cr>o<cr><esc>P<c-o>
vmap ,ad d:set wrapscan<cr>/ArchiveDone$<cr>o<cr>.archived@<F11><cr><esc>P<c-o>dd:set nowrapscan<cr>
"vn ,aD d?ArchiveDoneReopen<cr>o<cr><esc>P<c-o>
vmap ,aD d?ArchiveDoneReopen<cr>o<cr>.reopened@<F11><cr><esc>P<c-o>
vmap ,ap d/ArchiveNotDone<cr>o<cr>.archived@<F11><cr><esc>P<c-o>dd

"phaseII:
" todo:need to save previous search regis,and restore afterward

"base64 encryption {{{2
nn ,eb vip:!base64<CR>
nn ,eB vip:!base64 -di<CR>
nn ,ev :!base64<CR>
nn ,eV :!base64 -di<CR>

"visual block {{{2
"a paragraph
nn ,V {+vip<c-v>$
"selected the just-pasted text blocks
nn ,v '[<S-v>']
nn ,o '[<S-v>'.
"nmap ,, ,v>
nmap ,> ,v>

"others {{{2

"toggle spellcheck
"http://vim.wikia.com/wiki/Toggle_spellcheck_with_function_keys
nmap ,tS :setlocal spell! spelllang=en_us<CR>


"change dir to curr file folder,only for curr win
"print the directory after changing, so you know where you ended up. 
nnoremap ,cd :lcd %:p:h<CR>:pwd<CR>
"maybe change dir globally is more convenient?
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"add c-l when expanding a fold using "l", 
"need more work: adjust if it's a large file or not
":nn <expr>  l  foldclosed(".")>=1 ? "zo<C-L>" : "l"
":nn <expr>  zc  foldclosed(".")>=1 ? "zc<C-L>" : "zc"
":nn <expr>  zC  foldclosed(".")>=1 ? "zC<C-L>" : "zC"
":nn <expr>  zM  foldclosed(".")>=1 ? "zM<C-L>" : "zM"

:set foldcolumn=2 		"make N column as left margin (for the fold mark)
":set foldmarker={,},{{{,}}}
":set foldmethod=marker

"disable showmarks plugin on startup
let showmarks_enable=0
"define a command "Grep", grep match of last search, then put in a new buffer
"http://vim.wikia.com/wiki/VimTip1063
"both doesn't work well with a range coz g// repeat without range
"command! Grep execute 'normal! 0"ay0' | execute 'g//y A' | tabnew | enew | setlocal bt=nofile | put! a | nohls
":nmap _g :let @b=&number<CR>:set nonumber<CR>:redir @a<CR>:g//<CR>:redir END<CR>:let &number=@b<CR>:new<CR>:put! a<CR><CR>
 command! -range=% MyGrep let @a='' | execute '<line1>,<line2>g//y A' | tabnew | enew | setlocal bt=nofile | put! a | nohls 
"
:dig a 9639 		"under insert mode, use c-k a to input ▧, great!

"for junos config, to jump to the next/prev clause in current level
:map ]\ $%/{<CR>:nohls<CR>
:map [\ $?}<CR>%:nohls<CR>





"Alt-right to bnext(go next buffer)
nmap <A-up> <ESC>:bn<CR>	
"Alt-left to bprev(go prev buffer)
nmap <A-down> <ESC>:bp<CR>	
"ISsue: sometime low performance, don't know why, 
"issue: after jump and do j,k, the move start from old place
"up/down to the same mapping is OK
"map j gj		
"map k gk		
"noremap j gj
"noremap k gk
"same for insert mode
"imap <UP> <ESC>gki
"imap <DOWN> <ESC>gji
"map <UP> gk
"map <DOWN> gj
nmap <UP> <C-y>
nmap <DOWN> <C-e>
nmap <left> zh
nmap <right> zl

nmap <C-left> zH
nmap <C-right> zL

"map , @q

"open a filename under cursor in a new tab
nmap gf :tabedit <cfile><CR>
"support filename with space, for gf
"(2015-11-20) disable this, looks not a good option. this will treat the whole
"line as a filename! 
"set isfname+=32

"toggle menu&toolbar with C-F2
nmap <silent> <C-F2> 
    \:if &guioptions =~# 'T' <Bar>
    \set guioptions-=T <Bar>
    \set guioptions-=m <Bar>
    \else <Bar> 
    \set guioptions+=T <Bar>
    \set guioptions+=m <Bar>
    \endif<CR>

"(2018-09-23) change to 5 - because of an issue in markdown
nmap <F7> A <tab>#<---<Esc>
nmap ,ma A <tab>#<---<Esc>
"don't press esc, coz always need to add comments
nmap ,ma A <tab>#<---

nn ,mA :%s/^\(#\+\)/\=repeat('=',len(submatch(1)))/gc

"remove empty lines in visual mode
vmap <F8> :g/^$/d<CR>

nmap <silent> <C-F8> <ESC>:Tlist<RETURN>
"we better don't change the basic behavior? (so we won't be feeling pain when
"changing to anther system in the future
"map o o<esc>
"copy current fullpath filename to vim buffer
nmap <S-F8> :let @" = expand("%:p")<enter>

"join every 2 lines, I make it by this, but don't quite understand why it
"works :)
"no, it doesn't always work
nmap <F9> <ESC>qqJjq@q

"for vim under tmux
"???(2020-03-22) 
"nnoremap ^[[1;2D <ESC><c-w>>
"nnoremap ^[[1;2C <ESC><c-w><
"nnoremap ^[[1;2A <ESC><c-w>+
"nnoremap ^[[1;2B <ESC><c-w>-

"use s-arrow key to resize window
"(2018-03-13) with ,h and ,H for same goal, maybe use this to scroll quick horizontally
"nnoremap <S-right> <ESC><c-w>>
"nnoremap <S-left> <ESC><c-w><
nnoremap <S-right> <ESC>zL
nnoremap <S-left> <ESC>zH
nnoremap <S-up> <ESC><c-w>+
nnoremap <S-down> <ESC><c-w>-

"noremap y Y
"noremap Y y

nmap Y y$
"this won't work yet
"rmap <S-Space> <PAGEUP>

"sketch plugin,don't work
nmap <C-F1> :call ToggleSketch()<CR>	


"this, to invoke sketch plugin,somehow ,doesn't work
nmap <silent> <C-F3> :call ToggleSketch()<CR>


"create a new menu Tabs and some items in it
:menu Tabs.Next <ESC>:tabnext<cr>
:amenu Tabs.&Delete :confirm tabclose<cr>
:amenu Tabs.&Alternate :confirm tabn #<cr>
:amenu <silent> Tabs.&Next :tabnext<cr>
:amenu <silent>Tabs.&Previous :tabprevious<cr>

"this cause long lines become VERY slow
":match ErrorMsg /\%3500v.\+/

:set cursorline		"mark curr line (with a underline)
"set cursorcolumn		"mark curr column

	
set splitright			"make vsplit generate new win@right
set splitbelow			"make split generate new win@below


"these will lead to some other issues: 
"if manually/or via modeline, set FT to other type, like asciidoc,
"the FT info in *.txt will got reset whenever switch bet files
"au BufEnter *.txt setlocal ft=txt	"for txtexplorer plugin
"au BufRead,BufNewFile *.log setlocal ft=txt "to treat .log files as text file


:set fillchars=fold:\	"there is a space after the \
" :set foldtext=getline(v:foldstart).'  ('.v:foldstart.')'



"some codes about balloon,to preview a folded range of lines
"and to provide suggestions on a misspelled word
"not sure how to activate it yet
function! FoldSpellBalloon()
let foldStart = foldclosed(v:beval_lnum )
let foldEnd = foldclosedend(v:beval_lnum)
let lines = []
" Detect if we are in a fold
if foldStart < 0
" Detect if we are on a misspelled word
let lines = spellsuggest( spellbadword(v:beval_text)[ 0 ], 5, 0 )
else
" we are in a fold
let numLines = foldEnd - foldStart + 1
" if we have too many lines in fold, show only the first 14
" and the last 14 lines
if ( numLines > 31 )
let lines = getline( foldStart, foldStart + 14 )
let lines += [ '-- Snipped ' . ( numLines - 30 ) . ' lines --' ]
let lines += getline( foldEnd - 14, foldEnd )
else
"less than 30 lines, lets show all of them
let lines = getline( foldStart, foldEnd )
endif
endif
" return result
return join( lines, has( "balloon_multiline" ) ? "\n" : " " )
endfunction
"set balloonexpr=FoldSpellBalloon()
"set ballooneval

"in the .myabbreviations.vim there will be a lot of abbreviations
":source ~/.vim/.myabbreviations.vim


"When the "unnamed" string is included in the 'clipboard' option, the unnamed
"register is the same as the "* register.  Thus you can yank to and paste the
"selection without prepending "* to commands.  but looks visual mark also put
"text into "* register,making normal cut&paste in single file painful
"this breaks the vimwiki visual mode selection feature
":set clipboard=unnamed,autoselect,exclude:cons\\\|linux

"for windows vim, copy into clipboard
if has('win32')
    set clipboard=unnamed
endif

"not bad for wsl also? (2018-07-17) 
"this may not be good choise after live with it
"set clipboard=unnamed

"remove options from the sessionoptions list, make vimrc changes also apply to
"saved sessions
:set sessionoptions-=options
"from vim user manual, for unix/win compatibility
:set sessionoptions+=unix,slash


if !exists(":DiffOrig")
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
\ | wincmd p | diffthis
endif


"save file in insert mode
":imap <C-s> <esc>:w<cr>a
" save file (ctrl-s)
":map <C-s> :w<cr>
"copy selected text (ctrl-c), originally a not-so-useful key in vim
:vmap <C-c> "+y"*y
:vmap <A-c> "*y
"c-s-letter bind doesn't work
"c-letter & c-s-letter use same key code,vim can't diff
":nnoremap <C-s-p> "+P
" "*p seems not much useful as "+p
":nnoremap <A-p> "*p
"but this seems not work (from cygwin ssh)
:nn <A-p> "+P
"Paste clipboard contents (ctrl-p), originally a not-so-useful key in vim
:nn <C-p> "+p
"use the vmap trick(press v first), to diff with c-p in normal mode
:vn <c-p> <esc>"+P
":nnoremap <A-s-p> "*P
"cut selected text (ctrl-x), orig key not-so-useful
:vmap <C-x> "+x

"this is replaced by .vim/ftdetect/myft.vim
"autocmd BufReadPost *.log set ft=je

nnoremap 'a 'azt
nnoremap 'b 'bzt
nnoremap 'c 'czt

:map Y y$

nn ,gi :Gist -p<CR>

"plugin tuning options {{{1

"vim-plug {{{2
"install plugins automatically
"
"install vim-plug plugin itself
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  if !executable('ctags')
      silent !apt-get install ctags
  endif
  if !executable('git')
      silent !apt-get -y install git
  endif
endif

"automatically install needed plugins
"call plug#begin('~/.vim/bundle')
"in case git is not installed, use silent to surpress error msgs
call plug#begin('~/.vim/bundle')

"install new plugins without restart vim
"yy: copy the "Plug 'xxx'" line in register ", 
"@": execute the "Plug xxx" line
"PlugInstall

"Plug 'vim-scripts/VOoM'
Plug 'vim-voom/VOoM'
"optional
Plug 'plasticboy/vim-markdown'
Plug 'michaeljsmith/vim-indent-object'
Plug 'ervandew/supertab'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'scrooloose/nerdtree'

"more optional
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/DrawIt'
Plug 'vim-scripts/VisIncr'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'easymotion/vim-easymotion'
Plug '907th/vim-auto-save'

"Plug 'vim-scripts/Conque-Shell'  "don't install this
Plug 'oplatek/conque-shell'
Plug 'shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'vim-scripts/taglist.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/MPage'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'johngrib/vim-game-code-break'
Plug 'junegunn/goyo.vim'
Plug 'zyedidia/vim-snake'
Plug 'johngrib/vim-game-snake'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
"Plug 'junegunn/fzf.vim'
Plug 'itchyny/calendar.vim'
Plug 'tpope/vim-eunuch'
Plug 'andrewradev/linediff.vim'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'tpope/vim-obsession'
"Plug 'pedrohdz/vim-yaml-folds'
"Plug 'Valloric/YouCompleteMe'
Plug 'vim-scripts/visSum.vim'
Plug 'sk1418/howmuch'
Plug 'chase/vim-ansible-yaml'
Plug 'vim-scripts/ZoomWin'              "add zoomwin
Plug 'farmergreg/vim-lastplace'
Plug 'sillybun/vim-repl'                "useful (sometimes buggy)
Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }
Plug 'skywind3000/asyncrun.vim'         "very good
Plug 'mileszs/ack.vim'
Plug 'camspiers/animate.vim'
Plug 'airblade/vim-gitgutter'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'sjl/gundo.vim'
Plug 'habamax/vim-asciidoctor'
Plug 'arecarn/crunch.vim'
Plug 'arecarn/selection.vim'
Plug 'majutsushi/tagbar'

if v:version >= 800
    Plug 'w0rp/ale'
    Plug 'paulkass/jira-vim'                "not working yet (2020-02-11) 
    Plug 'ianva/vim-youdao-translater'
    Plug 'camspiers/lens.vim'
endif

call plug#end()

"nerdtree-git-plugin {{{2
"too slow when working with nerdtree side panel, have to disable
let g:loaded_nerdtree_git_status = 0

"
"Sum--- {{{2
"usage: visual block selection: :Sum, then paste result
"
"options:
"If non-zero, this option causes Sum to also save the result in the unnamed
"register 
let g:Sum_yank=0
"This option specifies a pattern to be ignored in floating
"point numbers; by default, Sum will ignore commas.  One
"may specify any pattern to be ignored (see |regexp|).
"Letting g:Sum_ignorepat="" means no characters will be ignored.
"let g:Sum_ignorepat


" Sum.vim : sum a visual-block column of floating point numbers
" Author  : Charles E. Campbell
" Date    : Mar 04, 2014 - Nov 13, 2018
" Version : 1e	ASTRO-ONLY
" ---------------------------------------------------------------------
" Load Once: {{{3
if &cp || exists("g:loaded_Sum")
 finish
endif
let g:loaded_Sum= "v1e"

" ---------------------------------------------------------------------
" Default ignore character:
if !exists("g:Sum_ignorepat")
 let s:Sum_ignorepat= ','
else
 let s:Sum_ignorepat= g:Sum_ignorepat
endif
if !exists("g:Sum_yank")
 let s:Sum_yank= 0
else
 let s:Sum_yank= g:Sum_yank
endif

if !exists("g:Sumfmt")
 let s:Sumfmt= "%f"
else
 let s:Sumfmt= g:Sumfmt
endif

" ---------------------------------------------------------------------
" Public Interface: {{{3
com! -range -nargs=*	Sum		call s:ColSum(<f-args>)
com! -nargs=1			Sumfmt	let s:Sumfmt=<q-args>

" ---------------------------------------------------------------------
" s:ColSum: sum a visually-selected column or row of numbers {{{3
fun! s:ColSum(...) range
"  call Dfunc("s:ColSum() a:0=".a:0." lines[".line("'<").",".line("'>")."] cols[".col("'<").",".col("'>")."]")
  let akeep= @a
  sil! keepj norm! gv"ay
  let prblm = substitute(@a   ,'\_s\+'   ,'+','ge')
"  call Decho("1 : prblm=".prblm)        
  let prblm = substitute(prblm,'^+\+'    ,'' ,'e')
"  call Decho("2 : prblm=".prblm)        
  let prblm = substitute(prblm,'+\+$'    ,'' ,'e')
"  call Decho("3 : prblm=".prblm)        
  let prblm = substitute(prblm,'+\{2,}'  ,'+','ge')
"  call Decho("4 : prblm=".prblm)        
  let prblm = substitute(prblm,'+-'      ,'-','ge')
"  call Decho("5 : prblm=".prblm)        
  let prblm = substitute(prblm,'-+'      ,'-','ge')
"  call Decho("6 : prblm=".prblm)        
  let prblm = substitute(prblm,','       ,' ','ge')
"  call Decho("7 : prblm=".prblm)       
  let prblm = substitute(prblm,'[!:a-z]' ,' ','ge')
"  call Decho("8 : prblm=".prblm)
  let prblm = substitute(prblm,'\s\+'    ,'+','ge')
"  call Decho("9 : prblm=".prblm)
  let prblm = substitute(prblm,'+\+'     ,'+','ge')
"  call Decho("10: prblm=".prblm)
  let prblm = substitute(prblm,'+\+-+\+' ,'-','ge')
"  call Decho("11: prblm=".prblm)
  if strlen(s:Sum_ignorepat) >= 1
   let prblm = substitute(prblm,s:Sum_ignorepat,'','ge')
  endif
"  call Decho("prblm=".prblm)
  exe "let FPresult=".prblm
  " sanity check the format
  if s:Sumfmt !~ '^%'
   let s:Sumfmt= '%f'
  endif

  " compute the result
  let result= printf(s:Sumfmt,FPresult)
"  call Decho("result=".result)
  let @*    = result
  let @a    = akeep
  if s:Sum_yank
   let @@= result
  endif
  redraw!
  echomsg result
"  call Dret("s:ColSum ".result)
  return result
endfun

"crunch {{{2
let g:crunch_precision = 15

"howmuch {{{2
"not accurate for large numbers(2020-05-09) 
"work for visual block selection
"
"options:
"let g:loaded_HowMuch = 1      "to disable
let g:HowMuch_scale = 20
let g:HowMuch_debug = 0
"let g:HowMuch_auto_engines = ['bc', 'vim', 'py']


"commands: 
"
":HowMuchVersion to display current plugin version. 
":HowMuch [flags] To do math calculation                       *:HowMuch*
"
"available flags:
"- r: result replaces the original selected text
"- s: do sum
"- =: output equal sign
"
"usage: visual block select, then :HowMuch rs
"or use maps below

"maps:
vm ,cs <Plug>AutoCalcReplaceWithSum
"
" ======================================================================================
" |                             Auto calculation mappings                              |
" ======================================================================================
" | Default             |     Features     |      To Remap                             |
" ======================================================================================
" |                     | auto-calculation;|                                           |
" |  <Leader>?          | append result    | vmap ... <Plug>AutoCalcAppend             |
" |                     | separator: " "   |                                           |
" +---------------------+------------------+-------------------------------------------+
" |                     | auto-calculation;|                                           |
" |  <Leader>?s         | append result    | vmap ... <Plug>AutoCalcAppendWithSum      |
" |                     | separator: " "   |                                           |
" |                     | do sum           |                                           |
" +---------------------+------------------+-------------------------------------------+
" |                     | auto-calculation;|                                           |
" |  <Leader>?=         | append result    | vmap ... <Plug>AutoCalcAppendWithEq       |
" |                     | separator: " = " |                                           |
" +---------------------+------------------+-------------------------------------------+
" |                     | auto-calculation;|                                           |
" |  <Leader>?=s        | append result    | vmap ... <Plug>AutoCalcAppendWithEqAndSum |
" |                     | separator: " = " |                                           |
" |                     | do sum           |                                           |
" +---------------------+------------------+-------------------------------------------+
" |                     | auto-calculation |                                           |
" |  <Leader><Leader>?  | replace expr     |                                           |
" |                     | with result      | vmap ... <Plug>AutoCalcReplace            |
" |                     |                  |                                           |
" +---------------------+------------------+-------------------------------------------+
" |                     | auto-calculation |                                           |
" |  <Leader><leader>?s | replace expr     | vmap ... <Plug>AutoCalcReplaceWithSum     |
" |                     | with result      |                                           |
" |                     | do sum           |                                           |
" ======================================================================================

"vim-asciidoctor {{{2
let g:asciidoctor_fenced_languages = ['python', 'c', 'javascript', 'sh']
"let g:asciidoctor_folding = 1
"let g:asciidoctor_fold_options = 1
func! AsciidoctorHighlight()
    " Highlight asciidoctor syntax with colors you like.
    " For solarized8 colorscheme
    if get(g:, "colors_name", "default") == "solarized8"
        hi asciidoctorTitle guifg=#ff0000 gui=bold ctermfg=red cterm=bold
        hi asciidoctorOption guifg=#00ff00 ctermfg=green
        hi link asciidoctorH1 Directory
    elseif get(g:, "colors_name", "default") == "default"
        hi link asciidoctorIndented PreProc
    endif
endfunc
augroup ASCIIDOCTOR_COLORS | au!
    au Colorscheme * call AsciidoctorHighlight()
    au BufNew,BufRead *.adoc call AsciidoctorHighlight()
augroup end


"JiraVim {{{2
let g:jiraVimDomainName = "contrail-jws"
let g:jiraVimDomainName = "http://contrail-jws.atlassian.net"
let g:jiraVimEmail = "pings@juniper.net"
let g:jiraVimToken = "SqSU8lTerMSENhQ9rSqcC8DE"

"AsyncRun {{{2
"https://github.com/skywind3000/asyncrun.vim/wiki/FAQ#cant-see-the-realtime-output-when-running-a-python-script
"disable python's stdout buffering when running in background
let $PYTHONUNBUFFERED = 0
let g:asyncrun_open = 8         "auto open qfix?

"ack {{{2
cnoreabbrev Ack Ack!

"Use this option to highlight the searched term.
let g:ackhighlight = 1
"Use this option to fold the results in quickfix by file name
"let g:ack_autofold_results=1
"Use this option to use vim-dispatch to run searches in the background
"let g:ack_use_dispatch = 1
"enable blank searches to run against the word under the cursor
let g:ack_use_cword_for_empty_search = 0

"Calendar {{{2
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

"fzf {{{2

"ctrlp {{{2
"ctrl + j/k  # 进行上下选择
"ctrl + x/s/CR    # 在当前窗口水平分屏打开文件
"ctrl + v    # 同上, 垂直分屏
"ctrl + t    # 在tab中打开
"<c-d>       # 只能搜索全路径文件
"<c-r>       # 可以使用正则搜索文件
"
"
"if executable('ag')
"  " Use ag over grep
"  set grepprg=ag\ --nogroup\ --nocolor
"
"  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"  "let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore=vendor --ignore images --ignore svg --ignore fonts -g ""'
"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
"endif


"if exists("g:ctrlp_user_command")
"  unlet g:ctrlp_user_command
"endif
"if executable('ag')
"  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command =
"    \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
"
"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
"else
"  " Fall back to using git ls-files if Ag is not available
"  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
"  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
"endif

"
"
let g:ctrlp_map = ',cp'
nmap ,cm :CtrlPMRU<CR>
nmap ,cb :CtrlPBuffer<CR>
"let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp'

"this will affact all other plugins that may rely on searching these
"folders...
"set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
"
"this is ctrlp specific
"this line sharply reduced the index time in my system
"   \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$|c|Dropbox',
"
"than the built-in example:
"   \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
"
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$|c|Dropbox',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }

let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=100
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_clear_cache_on_exit = 0

let g:ctrlp_switch_buffer = 'Et'

"searching by filename (vs full path name) as default
let g:ctrlp_by_filename = 1
"searching by regex as default
let g:ctrlp_regexp = 1
let g:ctrlp_show_hidden = 1

"c-y under ctrlp mode to create new file in a 't'ab, default is vsplit
let g:ctrlp_open_new_file = 't'

"when opening multiple files, put each file in a new tab,
"but no more than 5, others will be in hidden buffers
"  t - each file in a new tab.
"  h - each file in a new horizontal split.
"  v - each file in a new vertical split.
"  i - all files as hidden buffers.
"  j - after opening, jump to the first opened tab or window.
"  r - open the first file in the current window, then the remaining files in
"      new splits or new tabs depending on which of "h", "v" and "t" is also
"      present.
"however, this setting will be override by ctrlp_arg_map
let g:ctrlp_open_multiple_files = '5t'

"<c-o> and <c-y> mappings will prompt for a keypress regarding how to open
"t/h/v/i/r tab/horizontal/vertical/hidden buffer/current win
let g:ctrlp_arg_map = 1

"let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:500'

let g:ctrlp_default_input = 1
let g:ctrlp_tilde_homedir = 1
"let g:ctrlp_bufpath_mod = ':~:.:h'

"this does not work
"let g:ctrlp_prompt_mappings = {
"    \ 'PrtInsert("c")':       ['<MiddleMouse>', '<s-insert>'],
"    \ 'PrtClearCache()':      ['<F5>'],
"    \}


"vrc (vim-rest-console) {{{2
"always display the curl command executed
let g:vrc_show_command = 1

"let g:vrc_curl_opts = {
"  \ '-sS': '',               <-- options without value.              
"  \ '--connect-timeout: 10,  <-- single option.                      
"  \ '-H': ['header1: value1', 'header2: value2'],  <-- multi-option. 
"\}
let g:vrc_curl_opts = {
  \ '-sS': '',
  \ '--connect-timeout': 10,
  \ '-i': '',
  \ '-u': 'admin:Juniper',
  \ '--max-time': 60,
  \ '-k': '',
\}


"
"Tabmerge {{{2
"https://www.vim.org/scripts/script.php?script_id=1961
"https://raw.githubusercontent.com/vim-scripts/Tabmerge/master/plugin/Tabmerge.vim
" Tabmerge -- Merge the windows in a tab with the current tab.
"
" Copyright July 17, 2007 Christian J. Robinson <infynity@onewest.net>
"
" Distributed under the terms of the Vim license.  See ":help license".

" Usage:
"
" :Tabmerge [tab number] [top|bottom|left|right]
"
" The tab number can be "$" for the last tab.  If the tab number isn't
" specified the tab to the right of the current tab is merged.  If there
" is no right tab, the left tab is merged.
"
" The location specifies where in the current tab to merge the windows.
" Defaults to "top".
"
" Limitations:
"
" Vertical windows are merged as horizontal splits.  Doing otherwise would be
" nearly impossible.

if v:version < 700
	echoerr "Tabmerge.vim requires at least Vim version 7"
	finish
endif

command! -nargs=* Tabmerge call Tabmerge(<f-args>)

function! Tabmerge(...)  " {{{3
	if a:0 > 2
		echohl ErrorMsg
		echo "Too many arguments"
		echohl None
		return
	elseif a:0 == 2
		let tabnr = a:1
		let where = a:2
	elseif a:0 == 1
		if a:1 =~ '^\d\+$' || a:1 == '$'
			let tabnr = a:1
		else
			let where = a:1
		endif
	endif

	if !exists('l:where')
		let where = 'top'
	endif

	if !exists('l:tabnr')
		if type(tabpagebuflist(tabpagenr() + 1)) == 3
			let tabnr = tabpagenr() + 1
		elseif type(tabpagebuflist(tabpagenr() - 1)) == 3
			let tabnr = tabpagenr() - 1
		else
			echohl ErrorMsg
			echo "Already only one tab"
			echohl None
			return
		endif
	endif

	if tabnr == '$'
		let tabnr = tabpagenr(tabnr)
	else
		let tabnr = tabnr
	endif

	let tabwindows = tabpagebuflist(tabnr)

	if type(tabwindows) == 0 && tabwindows == 0
		echohl ErrorMsg
		echo "No such tab number: " . tabnr
		echohl None
		return
	elseif tabnr == tabpagenr()
		echohl ErrorMsg
		echo "Can't merge with the current tab"
		echohl None
		return
	endif

	if where =~? '^t\(op\)\?$'
		let where = 'topleft'
	elseif where =~? '^b\(ot\(tom\)\?\)\?$'
		let where = 'botright'
	elseif where =~? '^l\(eft\)\?$'
		let where = 'leftabove vertical'
	elseif where =~? '^r\(ight\)\?$'
		let where = 'rightbelow vertical'
	else
		echohl ErrorMsg
		echo "Invalid location: " . a:2
		echohl None
		return
	endif

	let save_switchbuf = &switchbuf
	let &switchbuf = ''

	if where == 'top'
		let tabwindows = reverse(tabwindows)
	endif

	for buf in tabwindows
		exe where . ' sbuffer ' . buf
	endfor

	exe 'tabclose ' . tabnr

	let &switchbuf = save_switchbuf
endfunction

" vim:fdm=marker:fdc=2:fdl=1:


"YCM {{{2

let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
"matchit {{{2
"(2018-02-05) 
"make % works the best using default matchit plugin(not loaded by default)
"this command seems not backward compatible...
"packadd! matchit
"
"" open-browser {{{2
"(Sat, Oct 14, 2017  4:19:56 PM) 
" great, put cursor under a link, gx to open it in browser
" issue: does not work for markdown if installed the markdown plugin
"let g:netrw_nogx = 1 " disable netrw's gx mapping.
"nmap gx <Plug>(openbrowser-smart-search)
"vmap gx <Plug>(openbrowser-smart-search)

" vim-gist {{{2
"
let g:gist_browser_command = 'chrome %URL% &'
" (2018-02-01) this works
if has("win32unix")
    let g:gist_browser_command = 'cygstart %URL% &'
    "let g:gist_browser_command = 'w3m %URL%'
endif
"close browser, annoying on each update
let g:gist_open_browser_after_post = 0

if executable('pbcopy')
    let g:gist_clip_command = 'pbcopy'
elseif executable('xclip')
    let g:gist_clip_command = 'xclip -selection clipboard'
elseif executable('putclip')
    let g:gist_clip_command = 'putclip'
endif

let g:gist_show_privates = 1
let g:gist_post_private = 1
let g:gist_detect_filetype = 1
let g:gist_namelength = 50

"indent_guides {{{2 
"The default mapping to toggle the plugin is `<Leader>ig` 
let g:indent_guides_guide_size=1

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


"pymode {{{2
let g:pymode = 1

"let g:pymode_warnings = 1

let g:pymode_lint = 0           "enable code check by default
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

let g:pymode_python = 'python3'

nn ,pa :PymodeLintAuto<CR>
nn ,pt :PymodeLintToggle<CR>

"let g:pymode_folding = 0        "disable folding

"(Tue 14 Jan 2020 09:36:06 AM STD) disable rope, slow on save
"let g:pymode_rope = 1
"let g:pymode_rope_lookup_project = 0 
"let g:pymode_rope_complete_on_dot = 0
"
"
"key-mapping
    "\r: run code
    "c-space: autocomplete, press . 
    "
    "rope:
    "<C-c>+d" :show help for object under cursor
    "<C-c>+ro":organize module import(remove unused one)
    "<C-c>+g" :goto definition
    "<C-c>rr  :refactor
    "
    "motion:
    "================  ============================
    "Key               Command
    "================  ============================
    "[[                Jump to previous class or function (normal, visual, operator modes)
    "]]                Jump to next class or function  (normal, visual, operator modes)
    "[M                Jump to previous class or method (normal, visual, operator modes)
    "]M                Jump to next class or method (normal, visual, operator modes)
    "aC                Select a class. Ex: vaC, daC, yaC, caC (normal, operator modes)
    "iC                Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)
    "aM                Select a function or method. Ex: vaM, daM, yaM, caM (normal, operator modes)
    "iM Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)

"commands:
    "*:PymodeLint* -- Check code in current buffer
    "*:PymodeLintToggle* -- Toggle code checking
    "*:PymodeLintAuto* -- Fix PEP8 errors in current buffer automatically
    
""python-mode other info:
"https://blog.csdn.net/Demorngel/article/details/71158792
    ""开启警告
    "let g:pymode_warnings = 0
    ""保存文件时自动删除无用空格
    "let g:pymode_trim_whitespaces = 1
    "let g:pymode_options = 1
    ""显示允许的最大长度的列
    "let g:pymode_options_colorcolumn = 1
    ""设置QuickFix窗口的最大，最小高度
    "let g:pymode_quickfix_minheight = 3
    "let g:pymode_quickfix_maxheight = 10
    ""使用python3
    "let g:pymode_python = 'python3'
    ""使用PEP8风格的缩进
    "let g:pymode_indent = 1
    ""取消代码折叠
    "let g:pymode_folding = 0
    ""开启python-mode定义的移动方式
    "let g:pymode_motion = 1
    ""启用python-mode内置的python文档，使用K进行查找
    "let g:pymode_doc = 1
    "let g:pymode_doc_bind = 'K'
    ""自动检测并启用virtualenv
    "let g:pymode_virtualenv = 1
    ""不使用python-mode运行python代码
    "let g:pymode_run = 0
    ""let g:pymode_run_bind = '<Leader>r'
    ""不使用python-mode设置断点
    "let g:pymode_breakpoint = 0
    ""let g:pymode_breakpoint_bind = '<leader>b'
    ""启用python语法检查
    "let g:pymode_lint = 1
    ""修改后保存时进行检查
    "let g:pymode_lint_on_write = 0
    ""编辑时进行检查
    "let g:pymode_lint_on_fly = 0
    "let g:pymode_lint_checkers = ['pyflakes', 'pep8']
    ""发现错误时不自动打开QuickFix窗口
    "let g:pymode_lint_cwindow = 0
    ""侧边栏不显示python-mode相关的标志
    "let g:pymode_lint_signs = 0
    ""let g:pymode_lint_todo_symbol = 'WW'
    ""let g:pymode_lint_comment_symbol = 'CC'
    ""let g:pymode_lint_visual_symbol = 'RR'
    ""let g:pymode_lint_error_symbol = 'EE'
    ""let g:pymode_lint_info_symbol = 'II'
    ""let g:pymode_lint_pyflakes_symbol = 'FF'
    ""启用重构
    "let g:pymode_rope = 1
    ""不在父目录下查找.ropeproject，能提升响应速度
    "let g:pymode_rope_lookup_project = 0
    ""光标下单词查阅文档
    "let g:pymode_rope_show_doc_bind = '<C-c>d'
    ""项目修改后重新生成缓存
    "let g:pymode_rope_regenerate_on_write = 1
    ""开启补全，并设置<C-Tab>为默认快捷键
    "let g:pymode_rope_completion = 1
    "let g:pymode_rope_complete_on_dot = 1
    "let g:pymode_rope_completion_bind = '<C-Tab>'
    ""<C-c>g跳转到定义处，同时新建竖直窗口打开
    "let g:pymode_rope_goto_definition_bind = '<C-c>g'
    "let g:pymode_rope_goto_definition_cmd = 'vnew'
    ""重命名光标下的函数，方法，变量及类名
    "let g:pymode_rope_rename_bind = '<C-c>rr'
    ""重命名光标下的模块或包
    "let g:pymode_rope_rename_module_bind = '<C-c>r1r'
    ""开启python所有的语法高亮
    "let g:pymode_syntax = 1
    "let g:pymode_syntax_all = 1
    ""高亮缩进错误
    "let g:pymode_syntax_indent_errors = g:pymode_syntax_all
    ""高亮空格错误
    "let g:pymode_syntax_space_errors = g:pymode_syntax_all
    "————————————————
    "版权声明：本文为CSDN博主「SorelCheung」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
    "原文链接：https://blog.csdn.net/Demorngel/article/details/71158792


"syntastic {{{2
"(2016-03-10) 
"let g:syntastic_asciidoc_checkers = ['asciidoc']
"
"to disable one filetype, these doesn't work
"https://github.com/scrooloose/syntastic/issues/101
"let g:syntastic_enable_asciidoc_checker = 0
"let g:syntastic_disabled_filetypes = ['asciidoc']
"this works: disable asciidoc filetype by make it "passive"
let g:syntastic_mode_map = { 'passive_filetypes': ['asciidoc'] }

"this can be input in vim, but not pre-configurable:
":SyntasticToggleMode
"
"youdao--- {{{2
"great!
"(2014-11-22) 
vnoremap <silent> ,yd <Esc>:Ydv<CR> 
nnoremap <silent> ,yd <Esc>:Ydc<CR> 
noremap ,yD :Yde<CR>

"yank and save in a file, then paste into other vim instance (2015-12-01) 
"vmap <silent> ,yy y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/vim-reg.txt<CR>
vmap <silent> ,yy y:new<CR>P:w! ~/vim-reg.txt<CR>:bd!<CR>
"this doesn't work: can't write to multiple files at one go
"vmap <silent> ,yy y:new<CR>P:w! ~/vim-reg.txt | w! ~/Dropbox/vim-reg.txt<CR>:bd!<CR>
"map <silent> ,pp :sview ~/vim-reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
"map <silent> ,pp :sview ~/vim-reg.txt<CR>"zdG:bd!<CR>:call setreg('"', @", @z)<CR>p
"map <silent> ,PP :sview ~/vim-reg.txt<CR>"zdG:bd!<CR>:call setreg('"', @", @z)<CR>P
"vmap <silent> ,pp :sview ~/vim-reg.txt<CR>"zdG:w!:bd!<CR>:call setreg('"', @", @z)<CR>p</CR></CR></CR></silent>
"vmap <silent> ,PP :sview ~/vim-reg.txt<CR>"zdG:w!:bd!<CR>:call setreg('"', @", @z)<CR>P</CR></CR></CR></silent>
nnoremap <silent> ,pp :sview ~/vim-reg.txt<CR>"zdG:w!<CR>:bd!<CR>"zp<CR><CR><CR><silent>


function! PerformanceTest(start)
    if a:start == 'start'
        profile start ~/profile.log
        profile func *
        profile file *
    else
        profile pause
        noautocmd qall!
    endif
endfunction

nn ,bt :call PerformanceTest('start')<cr>
nn ,bs :call PerformanceTest('stop')<cr>

"tagbar {{{2
"disabled => can't close
"autocmd BufEnter *.tcl nested TagbarOpen
"autocmd BufEnter *.exp nested TagbarOpen
"autocmd BufEnter *.sh nested TagbarOpen
"autocmd BufEnter *.pl nested TagbarOpen

"supertab--- {{{2
"
"no button to turn on/off?
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'
"Acp(autocomplpop) {{{2

"enable (,ac) only when needed (new word spelling prompt)
let g:acp_enableAtStartup = 1

"unite.vim--- {{{2

"required by vimshell to get previous command history (c-l)

"vimshell--- {{{2

"not working
"in <C-p> <Plug>(vimshell_previous_prompt)
"let g:vimshell_cd_command='TabpageCD'
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'


"neocomplete --- {{{2
"enable (,nc) only when needed
let g:neocomplete#enable_at_startup = 1
"(2014-11-07), copied from help neocomplete 
""Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
"" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
"" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }
"
"" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
"
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return neocomplete#close_popup() . "\<CR>"
"  " For no inserting <CR> key.
"  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()
"" Close popup by <Space>.
""inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
"
"" For cursor moving in insert mode(Not recommended)
""inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
""inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
""inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
""inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
"" Or set this.
""let g:neocomplete#enable_cursor_hold_i = 1
"" Or set this.
""let g:neocomplete#enable_insert_char_pre = 1
"
"" AutoComplPop like behavior.
""let g:neocomplete#enable_auto_select = 1
"
"" Shell like behavior(not recommended).
""set completeopt+=longest
""let g:neocomplete#enable_auto_select = 1
""let g:neocomplete#disable_auto_complete = 1
""inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif
""let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
""let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"" For perlomni.vim setting.
"" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"tabname (1678)--- {{{2
" File: tab_name.vim
" Author: Nickolay Golubev
" Email: golubev.nikolay@gmail.com
" Description: script allow set names for tab pages ( "Call stack", "Help tab", "Broswser" for example ). Useful for console tab mode
" Usage:
"   :TName 'tabname' - set name for current tab page
"   :TNoName - remove name (page name = buffer name)

"if exists('tab_name_plugin')
"    finish
"endif
"
"let tab_name_plugin = 1

function! s:SetTabName(name)
    let t:tab_name = a:name

    for win_number in range(1, winnr('$'))
        call setwinvar(win_number, "tab_win_name", a:name)
    endfor

    call s:RefreshTab()
endfunction

function! s:RemoveTabName()
    for win_number in range(1, winnr('$'))
        call setwinvar(win_number, "tab_win_name", '')
    endfor
    unlet t:tab_name

    call s:RefreshTab()
endfunction

function! s:RefreshTab()
    set tabline=%!TabCaptionLineFunction()
        set guitablabel=%{TabGuiCaptionLabel()}
endfunction

function! TabCaptionLabel(number)
    let caption = ' '
    let tab_name = gettabwinvar(a:number, 1, 'tab_win_name') 

    let buflist = tabpagebuflist(a:number)
    let winnr = tabpagewinnr(a:number)
        let buf_name = bufname(buflist[winnr - 1])

    if tab_name == ''
        let caption .= pathshorten(buf_name)
    else
        let caption .= tab_name
    endif
    return caption.' '
endfunction


function! TabCaptionLineFunction()
    let line = ''
    for i in range(tabpagenr('$'))

        let modified_part = ''
        let bufnrlist = tabpagebuflist(i+1)
        for bufnr in bufnrlist
            if getbufvar(bufnr, "&modified")
                let modified_part = '+'
                break
            endif
        endfor

        let caption = '['.(i+1).modified_part.']'
        let line .= '%#String#'.caption
        " select the highlighting
        if i + 1 == tabpagenr()
            let line .= '%#TabLineSel#'
        else
            if i % 2 == 0
                let line .= '%#TabLine#'
            else
                let line .= '%#TabLine#'
            endif
        endif

        let line .= '%' . (i + 1) . 'T'

        let line .= TabCaptionLabel(i + 1)
    endfor

    let line .= '%#TabLineFill#%T'

    if tabpagenr('$') > 1
        let line .= '%=%#TabLine#%999Xclose'
    endif

    return line
endfunction

function! TabGuiCaptionLabel()
    let caption = '['
    let tab_number = v:lnum
    let bufnrlist = tabpagebuflist(tab_number)
    let tab_name = gettabwinvar(tab_number, 1, 'tab_win_name') 

    let caption .= tab_number

    for bufnr in bufnrlist
        if getbufvar(bufnr, "&modified")
            let caption .= '+'
            break
        endif
    endfor

    let caption .= '] '

    let winnr = tabpagewinnr(tab_number)
        let buf_name = bufname(bufnrlist[winnr - 1])
    if tab_name == ''
        let caption .= pathshorten(buf_name)
    else
        let caption .= tab_name
    endif

    return caption
endfunction


function! s:TabWinEnter()
    if exists('t:tab_name')
        call setwinvar(winnr(), "tab_win_name", t:tab_name)
    endif
endfunction
    
augroup TabLabelNameAU
    au!
    au WinEnter * call s:TabWinEnter()
augroup END

call s:RefreshTab()

command! -nargs=1 TName call s:SetTabName(<args>)
command! TNoName call s:RemoveTabName()




"csapprox--- {{{2
"(2014-10-11) pathogen-ized but then removed.
"caused colorscheme issue: always need to execute colorscheme again
"after started vim, otherwise colorscheme mess up

"vim-colorschemes--- {{{2
"https://github.com/flazz/vim-colorschemes
"(2014-10-11) pathogen install

"scrollcolors--- {{{2
"https://github.com/vim-scripts/ScrollColors
"(2014-10-11) pathogen

"easymotion--- {{{2
"conflcting with DrawIt, pending..
"let g:EasyMotion_leader_key = '\'
"(2014-10-11) pathogen-ized (bundle/vim-easymotion)

"markdown--- {{{2

"for https://github.com/plasticboy/vim-markdown, removed(slow)
let g:vim_markdown_frontmatter=1
let g:vim_markdown_folding_disabled = 1

"vim-airline--- {{{2
"for some reason, source vimrc again will lose tabline
"https://github.com/vim-airline/vim-airline/issues/1483
"(2019-10-25) 
"disable this plugin
"let g:loaded_airline = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_left_sep='>'
let g:airline_right_sep='<'
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep='▶'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '◀'
let g:airline_symbols.branch = '⎇'
"this cause the current tab not showing text
let g:airline_theme = 'powerlineish'

"let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#syntastic#enabled = 1
"
"enable enhanced tabline
let g:airline#extensions#tabline#enabled= 1
"1 show just tab number, 2 show tab and number of split(no use)
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"disable the up/right display of buf name
let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#show_buffers = 1
"show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#show_tabs = 1
"
"
"let g:airline#extensions#bufferline#enabled = 1

"testing (2017-05-02) 
let g:airline_inactive_collapse=1
"let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#fnametruncate = 10

"bash-support--- {{{2
"merged in vim-plugin, auto pathogen ized

let g:BASH_AuthorName   = 'ping'
let g:BASH_Email        = 'pings@juniper.net'
let g:BASH_Company      = 'Juniper Networks'


"drawit {{{2
"for drawit plugin only, see the doc of the first version of this plugin,
"search for "drawit-tip", there are this solution
"type "map ", then 3 ctrl-v, then the home or end key, a space, then "<home>"
"or "<end>"
nmap [1~ <home>
nmap [4~ <end>

"fun! SetDrawIt(di_vert,di_horiz,di_plus,di_upleft,di_upright,di_cross,di_ellipse)
let g:DrawitDrawingCH = 0
function! ToggleDrawitDrawingCH()
    if g:DrawitDrawingCH == 0
        let g:DrawitDrawingCH = 1
        call SetDrawIt('.','.','.','.','.','.','*')
        echo "set drawit charactor as dot (.)"
    elseif g:DrawitDrawingCH == 1
        let g:DrawitDrawingCH = 2
        call SetDrawIt('*','*','*','*','*','*','*')
        echo "set drawit charactor as asterisks (*)"
    else
        let g:DrawitDrawingCH = 0
        call SetDrawIt('|','-','+','\','/','X','*')
        echo "set drawit charactor as default"
    endif
endfunction
nmap ,td :call ToggleDrawitDrawingCH()<CR>


"map ,dd :call SetDrawIt('.','.','.','\','/','X','*')

"taglist {{{2
nnoremap <silent> ,tt :TlistToggle<CR>
nnoremap <silent> ,tb :TagbarToggle<CR>

"only display tags of current file and fold all others
let Tlist_File_Fold_Auto_Close = 1
"display only tags of current file
let Tlist_Show_One_File = 1
"exit vim when only taglist window left
let Tlist_Exit_OnlyWindow = 1
"process tag even if no taglist win
let Tlist_Process_File_Always =1

"easytags {{{2
"disable in an attemp to speed up conqterm (2013-12-06) 
"let g:loaded_easytags = 1
"it looks Conqterm make the "updatetime" real short (40ms),
"use this knob in that case
let g:easytags_updatetime_autodisable = 1
"You can execute the following Vim commands to disable the plug-in temporarily:
"	let g:easytags_auto_update = 0
"	let g:easytags_auto_highlight = 0
"Those commands are global (for all buffers, windows, tab pages). You can also do it for a single buffer (window, tab page) with:
"	let b:easytags_auto_update = 0
"	let b:easytags_auto_highlight = 0

"Hope this helps,
"(2018-02-28) to resolve slow/hanging issue
let g:easytags_async=1
let g:easytags_auto_highlight=0


"voom {{{2
"by def voom map it's voom_tab_key to <tab>|<C-I> to toggle bet. tree&body
"but C-I|tab is useful to jump forward (oppsite to C-O),map voom_tab_key to
"other key (here it is backspace), will get the vim C-I back

let g:voom_tab_key = '<BS>'

"The following two settings allow to use keys or key combinations other than
"<Return> and <Tab>.                                                        
"let g:voom_return_key = '<S-Return>'
"let g:voom_tab_key = '<C-Tab>'
"let g:voom_return_key = ''

let g:voom_ft_modes = {'asciidoc': 'asciidoc',
    \'asciidoc2': 'asciidoc', 
    \'vimwiki': 'vimwiki',
    \'markdown': 'pandoc',
    \'md': 'markdown',
    \'mkd': 'markdown',
    \'python': 'python',
    \'asciidoctor': 'asciidoc',
    \}
"let g:voom_default_mode = 'asciidoc'

"call VOom to format the text, 
nn vv :VoomToggle<CR>
"and (<Bar> --> '|')
"jump back (c-w w) to original text
"disable, doesn't work as expected
"nn vv :Voom<CR> <Bar> :exec "wincmd w"<CR>
"nn va :Voom asciidoc<CR><Bar> :exec "wincmd w"<CR>
nn vm :Voom markdown<CR><Bar> :exec "wincmd w"<CR>
vm vv :NR<CR>,tavv<CR>

"ping's code: 
"(02/06/2013) doesn't work yet, normal! <CR> doesn't jump to the other win
"(02/07/2013) works! call Voom function: Voom_ToTreeOrBodyWin() to switch
function! QuitNR()
    "get number of (current) one win in voom
    let wn_curr=winnr()

    "jump to other win in voom, this doesn't work, and fail the whole thing
    "tips about hitting return in Voom:
    "1) this doesn't work
    "normal! <CR>
    "reason:
    "   (very rare, ) here need to use normal <CR> , instead of normal! <CR>
    "   normal! will disable all maps, but if it's vim map which make the <cr>
    "   to 'jump', the map should be retained here
    "
    "2) it doesn't work even without '!'
    "normal <CR>
    "reason:
    "
    "3) this works!
    :execute "normal \<CR>"
    "reason:
    "   help :normal
    "   :exe "normal \<c-w>\<c-w>"
    "
    "4) another way:use Voom internal jump function
    "call Voom_ToTreeOrBodyWin()
    "reason:
    "   per .vim/plugin/voom.vim code:
    "   exe "vnoremap <buffer><silent> ".g:voom_tab_key." <Esc>:<C-u>call Voom_ToTreeOrBodyWin()<CR>"
    "
    "5) this is not correct
    "exec "<C-u>call Voom_ToTreeOrBodyWin()<CR>"
    "reason(per gmail thread):
    "   To call a function it is enough to write:
    "   call VoomTreeSelect(0)
    "   
    "   in you vimscript.  However if you want to use :execute command (but you
    "   don't need to):
    "   
    "   exe 'call VoomTreeSelect(0)'
    "   
    "   Both <c-u> and <cr> are not needed.  An example of a usage of <c-u>  and
    "   <cr> is when you define a map via :exe :
    "   
    "   exe 'map E :<C-U>call VoomTreeSelect(0)<CR>'
    "   
    "   and I presume you took your syntax from here.  The difference is that
    "   the right hand side of a map is not the same as what exe statement is
    "   using.  :exe executes expressions as an Ex command while the right hand
    "   side of a map is a bunch of normal commands, where ':' is used to enter
    "   the command line.  If you enter it in the visual mode, then it will
    "   start with range '<,>' and <c-u> is used to delete it.

    "get number of that win in voom
    "win will be re-numbered once one win got closed
    "so have to close the larger win first to garantee it work
    "find out larger/smaller win#
    let wn_pair=winnr()
    let wn_larger=wn_curr > wn_pair ? wn_curr : wn_pair
    let wn_smaller=wn_curr < wn_pair ? wn_curr : wn_pair

    "jump larger win first
    exec wn_larger . "wincmd w"
    "close the win
    quit
    "close the other one only if there IS another win (2 win# is not same)
    if wn_larger > wn_smaller
        "then jump to the smaller win and close it out
        exec wn_smaller . "wincmd w"
        quit

        "after above, the cursor is in left tree area. better move it back to body
        :execute "normal \<BS>"
    endif
endfu 
nn ,qv :call QuitNR()<CR>
"nn <silent> vV :call Voom_DeleteOutline('close')<CR>

"email thread: Function to put full stop at the end of my sentences
"seems not working yet
"(2014-02-02) it works, but annoying when scripting! disable for now
"by: iunmap <expr> <CR>
fun! LazyFullStop()
  if getline('.') =~ '\w$'
    return ".\<CR>"
  end
  return "\<CR>"
endf

"ino <expr> <CR> LazyFullStop() 

"add Voom mark at end of the line
"use exe here just to escape the Voom { { { mark
exe "map <F6> A {"."{{1"

"this will:
" reload the file
" find all cisco/junoes-CLI-like lines and mark them with Voom marks
"   
" call Voom
"map <F6> :edit!<CR> :perldo s/(.*?)(\(\S+\))??(\#\|\w\w+>\|^->\|slot \d\d?->)(\s*\w+.*$)/$2$3$4 \{\{\{1/gi <CR> :Voom <CR>
nmap <C-F6> :perldo s/(.*?)(\(\S+\))??(\#\|\w\w+>\|^->\|slot \d\d?->)(\s*\w+.*$)/$2$3$4 \{\{\{1/gi <CR> :Voom <CR>
" 				$1 	$2 	$3 				$4
nmap <S-F6> :perldo s/(\w+ \{)/$1 \{\{\{1/gi <CR> :Voom <CR>

    "this was designed to only expose the 1st level config CLI, but not work
    "looks perl don't have ability to say "anything but not abc"
    "map <S-F7> :perldo s/((?!\(config\-)).*?)(\(config\))??(\#\|^->\|slot \d\d?->)(\s*\w+.*$)/$2$3$4 \{\{\{1/gi <CR> :Voom <CR>
    " 		     $1     $2                  $3                $4
    "map <S-F7> :perldo s/((?<!\(config\-)).*?)(\(config\))??(\#\|^->\|slot \d\d?->)(\s*\w+.*$)/$2$3$4 \{\{\{1/gi <CR> :Voom <CR>

    "more example of perldo:
    "get rid of every(most) things and only keep things inside ""
    ":perldo s/(.*?)(".*")(.*)/$2/gi
    "



"csv--- {{{2

"disable map of space
let g:csv_nomap_space = 1

"vimwiki--- {{{2
"
"keymaps:
"  ,tv 	type of file: set ft=vimwiki
"  ,wt   vimwiki: togglelist
"  ,wf   wiki following link
"  ,ws   wiki split and edit linked page (disabled, no much use)
"  ,wv   wiki vsplit and edit linked page

"known behavior/solved--- {{{3
"   once define your own map, the default ones doesn't work
"   but you can define 2 maps for same function
"   will set .md .markdown to ft vimwiki
"       so VOom can't work well for markdown
"
"   if no voom activated, <CR> and <BS> both works
"
"   visual select dosn't work
"     resolved: comment this out
"     :set clipboard=unnamed,autoselect,exclude:cons\\\|linux
"
"   have to have syntax on(automatic) or set syntax=ON(manual), 
"      otherwise don't work


"pending issues {{{3
"
"   enter key conflict with Voom
"      s-enter is same as enter, no split
"      c-enter doesn't work in terminator
"      s-enter, c-enter works same as enter in xterm
"      once Voom called, all maps to Voom enter
"      workaround with other new key maps
"

"let g:loaded_vimwiki=1

"default: suppot mouse
"g:vimwiki_use_mouse=1

"testing: make txt to also be recognized as vimwiki
let g:vimwiki_ext2syntax = { '.md': 'markdown', '.mkd': 'markdown', '.wiki': 'media', }
"let g:vimwiki_ext2syntax = { '.md': 'markdown', '.mkd': 'markdown', '.wiki': 'media', '.txt': 'default',}

"this does not work, terminal can't diff CR,S-CR,C-CR
":nmap <S-ENTER> <Plug>VimwikiFollowLink

:nmap ,wt <Plug>VimwikiToggleListItem

"Workaround: use new keys when VOom are there
"
"from help:
    "following
    ":nmap <Leader>wf <Plug>VimwikiFollowLink
    "split
    ":nmap <Leader>we <Plug>VimwikiSplitLink
    "vsp
    ":nmap <Leader>wq <Plug>VimwikiVSplitLink

"my own map: not work under visualmode
"   (but <CR> works, even with voom!)
"following
":nmap <CR> <Plug>VimwikiFollowLink
nmap ,wf <Plug>VimwikiFollowLink
"split and edit
:nmap ,ws <Plug>VimwikiSplitLink
"vsplit and edit
:nmap ,wv <Plug>VimwikiVSplitLink

"tab key, can't use, otherwise report:
"Error detected while processing /home/ping/.vim/plugin/vimwiki.vim:
"line  486:
"E227: mapping already exists for \wt
":nmap <Leader>wt <Plug>VimwikiTabnewLink

let g:vimwiki_use_mouse=1

"WikiWord auto-links off/on
"let g:vimwiki_camel_case=0 / 1
"ping. to avoid overide '-' key
:nmap <Leader>- <Plug>VimwikiRemoveHeaderLevel
"table auto-format off/on
"let g:vimwiki_table_auto_fmt=0 / 1 
"
"numbering of headers in HTML off/on from level 1/on from level 2
"let g:vimwiki_html_header_numbering=0 / 1 / 2

"recognized extensions of local file links:
"pdf,txt,doc,rtf,xls,php,zip,rar,7z,html,gz
"let g:vimwiki_file_exts=’ext1,: : : ’ 

let g:vimwiki_list = [{},{'path': '~/vimwiki2/', }]
let g:vimwiki_list = [
    \{'path': '~/vimwiki/mx/',},
    \{'path': '~/vimwiki/xixi/', },
    \{'path': '~/vimwiki/caipu/', },
    \{'path': '~/vimwiki/finance/', },
    \]

"http://wiki.ktmud.com/tips/vim/vimwiki-guide.html
"let g:vimwiki_list = [{'path': 'E:/path/to/vimwiki-1/vimwiki/',  
"  \ 'path_html': 'E:/My Dropbox/vimwiki_html/'
"  \ 'html_header': 'E:/My Dropbox/Public/vimwiki_template/header.htm',
"  \ 'html_footer': 'E:/My Dropbox/Public/vimwiki_template/footer.htm',
"  \ 'diary_link_count': 5},
"  \{'path': 'Z:/path/to/vimwiki-2/vimwiki/'}]
" 是否在词条文件保存时就输出html  这个会让保存大词条比较慢
"      所以我默认没有启用  有需要的话就把这一行复制到下面去
"     \ 'auto_export': 1,
"
" 这里其实定义了两个维基项目。 path 是必须的，说明你想要把 wiki
" 条目存在哪个目录。其他选项各有默认值。生成的HTML存放在 path_html 下默认是与
" path 同目录下的 WIKIFOLDER_html ，其中 WIKIFOLER
" 是你存放维基条目的文件夹名。你可以分别为每个 wiki 项目指定 html
" 头部和尾部模板，建议把模板文件后缀采用 htm ，既和生成的 html
" 有所区分，又能保证语法高亮和各种 ftplugin 可用。 diary_link_count 是指
" diary.wiki 里每行放多少个日志链接

"" 对中文用户来说，我们并不怎么需要驼峰英文成为维基词条
"let g:vimwiki_camel_case = 0
" 
"" 标记为完成的 checklist 项目会有特别的颜色
"let g:vimwiki_hl_cb_checked = 1
" 
"" 我的 vim 是没有菜单的，加一个 vimwiki 菜单项也没有意义
"let g:vimwiki_menu = ''
" 
"" 是否开启按语法折叠  会让文件比较慢
""let g:vimwiki_folding = 1
" 
"" 是否在计算字串长度时用特别考虑中文字符
"let g:vimwiki_CJK_length = 1
" 
"" 详见下文...
"let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1'

"convert linebreak in list into a <br>
let g:vimwiki_list_ignore_newline=0

"my own var (after changing plugin code)
"(2013-03-03) 
".vim/autoload/vimwiki/html.vim
"在944行后加入一行：
"即可保持原来的vim中的line break。
"try: add this to retain(recover) the original linebreak
"useful for command output capture
"  if !g:vimwiki_ignore_newline
"    call add(lines, '<br />')
"  endif
let g:vimwiki_ignore_newline=0

"enable folding of list, this will make it really slow if more than 300 lines
"let g:vimwiki_folding=1

"nrrw--- {{{2

let g:nrrw_rgn_vert = 1
let g:nrrw_topbot_leftright = 'botright'
"turn off the highlighting (because this can be distracting)
let g:nrrw_rgn_nohl = 1
let g:nrrw_rgn_wdth = 90

"Utl {{{2x
let g:utl_cfg_hdl_mt_application_msword="VIM"
"Utl debug option, turn on when Utl doesn't work as expected
"let utl_opt_verbose=1 

"pathogen--- {{{2
"auto install
if empty(glob('~/.vim/autoload/pathogen.vim'))
  silent !curl -fLo ~/.vim/autoload/pathogen.vim --create-dirs
    \ https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
endif
"
"(2016-03-10) disable this, for unknown reason it freeze some asciidoc on save
execute pathogen#infect()

"MPage--- {{{2
nn ,mp :MPage 2<CR>

"googletranslator--- {{{2
"http://www.vim.org/scripts/script.php?script_id=3404

let g:goog_user_conf = {
    \'langpair': 'en|zh',
    \'v_key': 'T' }

"vimrepress--- {{{2
let VIMPRESS = 
	\[
                \{'username':'simplerlife',
                \'password':'',
                \'blog_url':'http://172.25.83.73/wordpress/xmlrpc.php'
                \},
		\{'username':'simplerlife',
                \'password':'',
                \'blog_url':'http://simplerlife.blogcn.com/xmlrpc.php'
                \},
                \{'username':'erx700@sina.com',
		\'password':'',
                \'blog_url':'http://blog.sina.com.cn/simplelifeus/xmlrpc.php'
                \},
	\]

"(01/06/2013) works for my own local wordpress.
"blogcn, sina, ... seems have xml-rpc disabled.
"currently don't know of any wp site have xml-rpc enabled
"
"error messages:
"Connecting to http://simplerlife.blogcn.com/
"xmlrpc error: XML-RPC Too Frequent (帐号需要通过手机验证)xmlrpc error: XML-RPC Too Frequent (帐号需要通过手机验证)

"Connecting to http://blog.sina.com.cn/simplelifeus
"Enter password for http://blog.sina.com.cn/simplelifeus :**********xmlrpc error: blog.sina.com.cn/simplelifeus/xmlrpc.php ForbiddenTraceback (
"most recent call last):
"  File "<string>", line 1, in <module>
"  File "<string>", line 170, in __check
"  File "<string>", line 195, in __check
"  File "<string>", line 202, in __check
"  File "<string>", line 477, in blog_list
"  File "/usr/lib/python2.7/xmlrpclib.py", line 1224, in __call__
"    return self.__send(self.__name, args)
"  File "/usr/lib/python2.7/xmlrpclib.py", line 1578, in __request
"    verbose=self.__verbose
"  File "/usr/lib/python2.7/xmlrpclib.py", line 1264, in request
"    return self.single_request(host, handler, request_body, verbose)
"  File "/usr/lib/python2.7/xmlrpclib.py", line 1294, in single_request
"    response = h.getresponse(buffering=True)
"  File "/usr/lib/python2.7/httplib.py", line 1018, in getresponse
"    raise ResponseNotReady()
"httplib.ResponseNotReady

"Connecting to blog_url = http://172.25.83.73/wordpress/
"network error: unsupported XML-RPC protocolTraceback (most recent call last):
"  File "<string>", line 1, in <module>
"  File "<string>", line 170, in __check
"  File "<string>", line 195, in __check
"  File "<string>", line 202, in __check
"  File "<string>", line 477, in blog_list
"AttributeError: 'NoneType' object has no attribute 'getRecentPosts'


"make sure no space bet C-w and < >
"map <LEFT> 		<C-w><
"map <RIGHT> 		<C-w>>
"this doesn't work in imac (ssh screen)
"map <A--> 		<C-w><
"map <A-=> 		<C-w>>
"this works
"map hh 			<C-w>< 
"map ll 			<C-w>> 
"
"

"Tabularize {{{2
"this doesn't work as expected
"(01/19/2013) this was found to bring an issue:
"   in block visual mode, when trying to insert a '|'
"   the operation is done immedidately right after the | was typed,
"   without the need to go back to normal, but then not repeatable with '.'
"
"http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
"inoremap <silent> <Bar> <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

nmap ,tg ,v:Tabularize /\s\+\zs/l1<CR>
vmap ,tg :Tabularize /\s\+\zs/l1<CR>

"icalendar syntax--- {{{2
autocmd! BufRead,BufNewFile *.ics setfiletype icalendar

"conqTerm--- {{{2
"
"insert mode quick paste, seems not supported in conqterm
inoremap 1 scp://jtac@192.168.46.146:/mnt/NAS/media/jtac/ping/ inoremap 2 scp://pings@/volume/build/junos/dev_x_123_att/12.3/development/20131109.1/ship

"currently experimenting
"Use this key to send the currently selected text to the most recently created
"Conque buffer.
"let g:ConqueTerm_SendVisKey = ',cv'
"nn ,ct :tabnew <bar> :ConqueTerm bash<cr>cd<cr>
"nn ,cs :new <bar> :ConqueTerm bash<cr>cd<cr>
"nn ,cv :vnew <bar> :ConqueTerm bash<cr>cd<cr>

nn ,st :VimShellTab<cr>
nn ,ss :new <bar> :VimShellCreate<cr>
nn ,sv :vnew <bar> :VimShellCreate<cr>
nn ,sa /[^\d0-\d127]

let g:ConqueTerm_FastMode = 1
"let g:ConqueTerm_ToggleKey = '<F8>'
"
"disable color to make it faster
let g:ConqueTerm_Color = 0
"
"let g:ConqueTerm_TERM = 'vt100'
let g:ConqueTerm_TERM = 'xterm'
"Conque buf cont to update after switched to another buf.  
"If set to 1 then your Conque buffers will continue to update after you've
"switched to another buffer.
"
"Note: Conque buffers may continue to update, but they will not scroll down as
"new lines are added beyond the bottom of the visible buffer area. This is a
"limitation of the Vim scripting language for which I haven't found a 
"workaround.
let g:ConqueTerm_ReadUnfocused = 1

"let g:ConqueTerm_InsertOnEnter = 0

function! MyConqueTermRepeat(cmd, ...)
    if  a:0 == 1
        let round = 2
        let sleeptime = a:1
    endif
    if a:0 == 0
        let sleeptime = 1
        let round = 2
    endif
    if a:0 == 2
        let sleeptime = a:1
        let round = a:2
    endif
    :for a in range(1, round, 1)
        ":execute "normal i" . a:cmd . "\<CR>\<CR>"
        :execute "normal i" . a:cmd . "\<CR>"
        :execute "normal i" . "#round (" . a . ") of " . "\"" . a:cmd . "\"!(" . sleeptime . "s intv)\<CR>"
        :startinsert
        :execute "sleep " . sleeptime
    :endfor
endfunc

com! -nargs=+ MyConqueTermRepeat :call MyConqueTermRepeat(<f-args>)
nn ,cc :call MyConqueTermRepeat("show ",1,2)

"new version with conqueterm API, to do..
function! MyConqueTermRepeat2(...)
    let cmd = "\<C-P>"
    let round = 2
    let sleeptime = 1

    if a:0 > 3
        echom "too much params"
    endif
    if a:0 > 2
        let sleeptime = a:3
    endif
    if a:0 > 1 
        let round = a:2
    endif
    if a:0 > 0
        let cmd = a:1
    endif

    if exists('g:ConqueTerm_Loaded')
        let time = sleeptime * 1000
    endif

    if cmd == 'p'
        "echom "inputed command is" . cmd . " will substitute"
        let cmd = "\<C-P>"
    endif

    :for a in range(1, round, 1)
        if a:0 == 0 || cmd == "\<C-P>"
            let cmd1 = "command"
        else
            let cmd1 = cmd
        endif

        let comment = "normal i#" . strftime("%T") . ":round (" . a . "/" . round . ") of " .  "\"" . cmd1 . "\"!(" . sleeptime .  "s intv)\<CR>"
        "echom "comment is now:" . comment

        if exists('g:ConqueTerm_Loaded')
            let myterminal=conque_term#get_instance()
            call myterminal.writeln(cmd)
            let output = myterminal.read(time)
            ":execute "sleep " . sleeptime
        else
            :execute "normal i" . cmd . "\<CR>"
            :execute "sleep " . sleeptime
        endif

        execute comment
        :startinsert
    :endfor
endfunc

com! -nargs=+ MyConqueTermRepeat2 :call MyConqueTermRepeat2(<f-args>)
nn ,cc :call MyConqueTermRepeat2("pwd",2,1)

"xptemplate--- {{{2
"(2013-12-06) trying to disable (but no success) to speed up conqterm
let g:__XPTEMPLATE_VIM = 100

"netrw {{{2
let g:netrw_preview   = 1       "vertial preview
let g:netrw_liststyle = 3       "default to use tree view
let g:netrw_winsize   = 30      "dir list use 30% of size
let g:netrw_altv = 1
let g:netrw_alto = 0
let g:netrw_browsex_viewer= "gnome-open"
if has("windows")
    "not working well
    let g:netrw_browsex_viewer= "setsid wstart"
endif
if has("win32unix")
    let g:netrw_browsex_viewer= "/cygdrive/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"
    let g:netrw_browsex_viewer= 'cygstart'      "does not work with fresh install in new pc(2018-01-13) 
endif

function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    silent exec "!open '".s:uri."'"
  else
    echo "No URI found in line."
  endif
endfunction
nmap <leader>u :call HandleURL()<cr>

"use the tree style as default listing style.
let g:netrw_liststyle= 4

"let loaded_nerd_tree=1 		"don't load nerd_tree plugin
				"so netrw will be used
"let g:loaded_netrw       = 1 	"to block netrw from be used
"let g:loaded_netrwPlugin = 1

"netrw: rendering web page via elinks
"edit http://www.google.com/
"let g:netrw_http_xcmd= "-dump >"

"let g:netrw_list_hide= '^\..*'

"Every time you change to a new directory (new for the current session),
"netrw will save the directory in a recently-visited directory history
"list (unless |g:netrw_dirhistmax| is zero; by default, it's ten).  With the
let g:netrw_dirhistmax = 50

"nerdtree {{{2
nn ,nn :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=3
let g:NERDTreeShowBookmarks=1
"these does not work, simply change the source code plugin/nerd_tree.vim
let g:NERDTreeMapOpenSplit='s'
let g:NERDTreeMapPreviewSplit='gs'
let g:NERDTreeMapOpenVSplit='v'
let g:NERDTreeMapPreviewVSplit='gv'
let g:NERDTreeMapHelp='h'
"5. Directories are first, newest to oldest, then everything else, newest to oldest.
let g:NERDTreeSortOrder=['\/$', '*', '[[-timestamp]]']
let g:NERDTreeSortOrder=['\/$', '*']
"
"Mark--- {{{2
"By default, the Mark plug indeed adds the highlighted text to both input and
"search history.By default, any marked words are also added to the search (/)
"and input (@) history; 
"if you don't want that, remove the corresponding symbols from:
"let g:mwHistAdd = '/@'
let g:mwHistAdd = ''

"TOhtml {{{2
"for TOhtml, don’t show line numbers, and also seems no color, just raw
let html_number_lines = 0 
"(2019-09-20) 
"better to have line number so convinient for reference
:unlet g:html_number_lines
let html_use_css = 1  "Use stylesheet instead of inline style
"let html_no_pre = 1  "don’t wrap lines in
"(2018-02-01) this becomes necessary, not sure why previously no need...
let g:html_dynamic_folds = 1

"by vimim author, this can be used to retain the vim "fold" also into HTML!
let $tohtml = "~/.vim/syntax/2html.vim"
com! Tohtml :syn on|so $tohtml|w


"gnu screen {{{2 
"this fix key issues when working with gnu screen
"--In addition to the Esc key, 
"you might find that all sorts of other things don't work the way they should. 
"This is because, by default, Screen sets the $TERM environmental variable to "screen", 
"which Vim does not recognize. 
"http://vim.wikia.com/wiki/GNU_Screen_integration
"a very simple way
if match($TERM, "screen")!=-1
  set term=xterm
endif

"If you want different behaviors whenever you're running Screen (see below for ideas), use the following alternative: 
"if match($TERM, "screen")!=-1
"  set term=xterm
"  let g:GNU_Screen_used = 1
"else
"  let g:GNU_Screen_used = 0
"endif

" Screen-ify an external command.
"function! InScreen(command)
"  return g:GNU_Screen_used ? 'screen '.a:command : a:command
"endfunction

"vimim {{{2x
"
"disable chinese punctuation, not good
"better leave it on and use ctrl-L to switch chinese/english punctuation
":let g:vimim_punctuation=0
":let g:vimim_cloud='qq'

"let g:vimim_cloud = 'google,sogou,baidu,qq'  
""let g:vimim_map = 'tab_as_gi'  
"let g:vimim_mode = 'dynamic'  
"let g:vimim_mycloud = 0  
"
let g:vimim_punctuation = 3  
"let g:vimim_shuangpin = 'purple' 		"双拼：紫光"
""let g:vimim_shuangpin = 0   			"turn off shuangpin
"let g:vimim_toggle = 'sogou,pinyin,google' 
"" Ctrl-\ 开关输入法
"let g:vimim_map='c-bslash'
"
"this doesn't work once plugin get loaded
function! ToggleVimimPunctuation()
  if g:vimim_punctuation == 3
      let g:vimim_punctuation = 0
      echo "turn off vimim punctuation"
  else
      let g:vimim_punctuation = 3
      echo "turn on vimim punctuation"
  endif
endfunction
nn ,ti :call ToggleVimimPunctuation()<CR>

"http://vimim.googlecode.com/svn/vimim/vimim.html
"“热键设置”选项 g:vimim_map （可以自由增减）
":let g:vimim_map='c-bslash'	" Ctrl-\ 开关输入法
":let g:vimim_map='m-space'	" Alt-空格键 开关输入法
":let g:vimim_map='c-space'	" Ctrl-空格键 开关输入法
":let g:vimim_map='no-search'	" 关闭 正斜杠 search
":let g:vimim_map='no-gi'	" 关闭 gi 无菜单窗
":let g:vimim_map='tab_as_gi'	" Tab键 为 gi 无菜单窗
":let g:vimim_map='tab_as_onekey'	" Tab键 为 点石成金
"
"“中文模式”选项 g:vimim_mode
":let g:vimim_mode='dynamic'	" 动态输入模式（缺省）
":let g:vimim_mode='static'	" 静态输入模式
"
"“中文标点”选项 g:vimim_punctuation
"
":let g:vimim_punctuation=1	" 基本中文标点
":let g:vimim_punctuation=2	" 常用中文标点（缺省）
":let g:vimim_punctuation=3	" 包括单双引号反斜杠
":let g:vimim_punctuation=0	" 不用中文标点
":let g:vimim_punctuation=-1	" 彻底关闭中文标点
"
"“插件位置”选项 g:vimim_plugin
"
":let g:vimim_plugin=0	" 缺省是vim plugin
"“输入法循环”选项 g:vimim_toggle
"
":let g:vimim_toggle='wubi,pinyin'	" 设定循环次序
":let g:vimim_toggle=-1	" 彻底关闭循环键
"
""“双拼”选项 g:vimim_shuangpin
":let g:vimim_shuangpin='abc'	" 双拼：智能ABC
":let g:vimim_shuangpin='ms'	" 双拼：微软
":let g:vimim_shuangpin='nature'	" 双拼：自然码
":let g:vimim_shuangpin='plusplus'	" 双拼：拼音加加
":let g:vimim_shuangpin='purple'	" 双拼：紫光
":let g:vimim_shuangpin='flypy'	" 双拼：小鹤
"
""“云输入”选项 g:vimim_cloud
":let g:vimim_cloud='baidu'	" 缺省：百度云输入
":let g:vimim_cloud='google'	" 谷歌云输入
":let g:vimim_cloud='sogou'	" 搜狗云输入
":let g:vimim_cloud='qq'	" QQ云输入
":let g:vimim_cloud='sogou.dynamic'	" 搜狗纯云输入，动态
":let g:vimim_cloud='sogou.static'	" 搜狗纯云输入，静态
":let g:vimim_cloud='qq.fanti'	" QQ云输入，开启繁体
":let g:vimim_cloud='qq.mixture'	" QQ云输入，开启混合模式
":let g:vimim_cloud='qq.fuzzy'	" QQ云输入，开启模糊音
":let g:vimim_cloud='qq.wubi'	" QQ云输入，五笔
":let g:vimim_cloud='qq.shuangpin.abc'	" QQ云输入，双拼智能ABC
":let g:vimim_cloud='qq.shuangpin.ms'	" QQ云输入，双拼微软2003
":let g:vimim_cloud='qq.shuangpin.plusplus'	" QQ云输入，双拼拼音加加
":let g:vimim_cloud='qq.shuangpin.purple'	" QQ云输入，双拼紫光拼音
":let g:vimim_cloud='qq.shuangpin.flypy'	" QQ云输入，双拼小鹤双拼
":let g:vimim_cloud='qq.shuangpin.nature'	" QQ云输入，双拼自然码
":let g:vimim_cloud=-1	" 彻底关闭云输入

"Mark {{{2
":help mark-colors
let g:mwDefaultHighlightingPalette = 'extended'

"Align {{{2
"this makes the align plugin works for chinese CH.
"let it 1 if it's too slow for long file w/ CN CH.
let g:Align_xstrlen= 3

"jupytext.vim {{{2
let g:jupytext_enable = 0

nn ,jh :w !jupytext --from md --to ipynb --set-kernel python3 \| papermill \| jupyter nbconvert --stdin --output '%:r.html' <CR><CR>
nn ,jH :!jupyter nbconvert %:r.ipynb; jupyter nbconvert '%:r.ipynb' --to asciidoc; asciidoctor '%:r.asciidoc' -a toc=right -a toclevels=5 -o '%:r.toc.html'&<CR>
nn ,jH :!
  \jupyter nbconvert '%:r.ipynb'; 
  \jupyter nbconvert '%:r.ipynb' --to asciidoc; 
  \asciidoctor '%:r.asciidoc' -a toc=right -a toclevels=5 -a doctype=book -a sectnums 
  \-o '%:r.toc.html'&<CR>

" change style sheet
" https://asciidoctor.org/docs/produce-custom-themes-using-asciidoctor-stylesheet-factory/
" jupyter nbconvert to adoc run into bug about heading.
nn ,jH :!
  \jupyter nbconvert '%:r.ipynb'; 
  \jupyter nbconvert '%:r.ipynb' --to asciidoc; 
  \pandoc -f markdown -t asciidoctor -s '%:r.md' -o '%:r.adoc';
  \asciidoctor '%:r.asciidoc' -a toc=right -a toclevels=5 -a doctype=book -a sectnums 
  \-a stylesdir='asciidoctor-stylesheet-factory/stylesheets' -a stylesheet=colony.css 
  \-o '%:r.asciidoc.html'; 
  \asciidoctor '%:r.adoc' -a toc=right -a toclevels=5 -a doctype=book -a sectnums 
  \-a stylesdir='asciidoctor-stylesheet-factory/stylesheets' -a stylesheet=colony.css 
  \-o '%:r.adoc.html'&<CR>

"asciidoctor -a stylesheet=colony.css -a toc=right -a doctype=book -a stylesdir=~/asciidoctor-stylesheet-factory/stylesheets -a sectnums jiuzhang_basic.asciidoc
"
"this is problematic:
" \-a stylesdir='~/asciidoctor-stylesheet-factory/stylesheets' -a stylesheet=colony.css 
"asciidoctor: FAILED: input file stylesdir=~/asciidoctor-stylesheet-factory/stylesheets is missing
"/mnt/c/Users/pings/Dropbox/python/learning_python/jiuzhang/~/asciidoctor-stylesheet-factory/stylesheets/colony.css
"

"nn ,jS :!jupytext --set-formats ipynb,md,py:hydrogen --sync %<CR>
nn ,jS :!jupytext --set-formats ipynb,md,py:percent --sync %&<CR>
nm ,jA ,jS<CR>,jH<CR>

"vim-repl {{{2
nnoremap ,pr :REPLToggle<Cr>

autocmd Filetype python nnoremap ,pb <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap ,pn <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap ,ps <Esc>:REPLPDBS<Cr>

let g:repl_width = 50           "REPL windows width
let g:repl_position = 3         "REPL windows on right
let g:sendtorepl_invoke_key = "<leader>w" "default value to send code
"not to stay at repl win - remain in original file"
let g:repl_stayatrepl_when_open = 0  
let g:repl_ipython_version = '7.8.0'
"add support to .md
let g:repl_program = {
			\	'python': 'ipython3',
                        \       'markdown': 'ipython3',
                        \       'asciidoc': 'ipython3',
			\	'default': 'bash'
			\	}

let g:repl_exit_commands = {
			\	'python': 'quit()',
			\	'ipython3': 'quit()',
			\	'ipython': 'quit()',
			\	'bash': 'exit',
			\	'zsh': 'exit',
			\	'default': 'exit',
			\	}

"once user sends a line starts with any pattern contained in the list, whole
"block will be send automatically.
"let g:repl_auto_sends = ['class ', 'def ', 'for ', 'if ', 'while ']

"once user sends code which is seperated into multilines, they are combined
"into one line automatically. For example, if the code is:
"a = 1+\
"    2+\
"    3
"then a = 1+2+3 will be sent to the repl environment instead of three lines.
let g:repl_python_automerge = 1

let g:reply_termwin_max_width = 30
let g:reply_repls = { 'python': ['ipython3'] }

"lens {{{2
"(Mon 02 Mar 2020 09:03:51 AM STD) 
let g:lens#disabled_filetypes = ['nerdtree', 'fzf', 'voomtree', 'vim-plug']
let g:lens#width_resize_max = 80
let g:lens#disabled = 1
let g:lens#animate = 0

"gitgutter {{{2
"is this too agressive?(2020-03-02) 
set updatetime=100

"startup with a TODO file {{{1
"(2019-01-17) 
"if @% == "" && getcwd() == "~/"
"if @% == ""
"    :silent edit TODO.adoc
"endif

"all about colors {{{1
"highlighted with ColorColumn,Useful to align
"long code.  Will make screen redrawing slower.
"and looks annoying when not coding
"set colorcolumn=80

"set terminal color, def 8.
"set t_Co doesnt work since it's a var,not option
"let t_Co=256 			



"this looks better than default (with which voom fold looks ugly)
"colorscheme elflord
"colorscheme molokai
colorscheme default
colorscheme koehler
colorscheme gruvbox     "this has to be after Pathogen setting
"this generate some warnings
"colorscheme Tomorrow-Night-Bright 
"colorscheme torte

"to highlight all non-ascii
"syntax match nonascii "[^\x00-\x7F]"
"highlight nonascii guibg=Red ctermbg=2

"(2013-02-26) 
"toggling between default/koehler/mololai
"a shortcut/quick way to do a complicated map but bypassing function calls
nmap ,co :
    \if g:colors_name == 'default' <Bar>
        \:colorscheme koehler <Bar>
    \elseif g:colors_name == 'koehler' <Bar>
        \:colorscheme molokai <Bar>
    \else <Bar>
        \:colorscheme default <Bar>
    \endif <Bar>
    \<CR>

"highlight column
"http://www.vimer.cn/2012/05/vimgvim%E6%94%AF%E6%8C%81%E5%AF%B9%E9%BD%90%E7%BA%BF.html
"highlight column of current cursor
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
    else
        execute "set cc-=".col_num
    endif
endfunction
nmap ,tc :call SetColorColumn()<CR>


let loaded_setcolors = 1
" colorscheme names that we use to set color
let s:mycolors = ['koehler', 'slate', 'torte', 'darkblue', 'delek', 'murphy', 'elflord', 'pablo', 'desert']  

" Set list of color scheme names that we will use, except
" argument 'now' actually changes the current color scheme.
function! s:SetColors(args)
  if len(a:args) == 0
    echo 'Current color scheme names:'
    let i = 0
    while i < len(s:mycolors)
      echo '  '.join(map(s:mycolors[i : i+4], 'printf("%-14s", v:val)'))
      let i += 5
    endwhile
  elseif a:args == 'all'
    let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
    let s:mycolors = uniq(sort(map(paths, 'fnamemodify(v:val, ":t:r")')))
    echo 'List of colors set from all installed color schemes'
  elseif a:args == 'my'
    let c1 = 'default elflord peachpuff desert256 breeze morning'
    let c2 = 'darkblue gothic aqua earth black_angus relaxedgreen'
    let c3 = 'darkblack freya motus impact less chocolateliquor'
    let s:mycolors = split(c1.' '.c2.' '.c3)
    echo 'List of colors set from built-in names'
  elseif a:args == 'now'
    call s:HourColor()
  else
    let s:mycolors = split(a:args)
    echo 'List of colors set from argument (space-separated names)'
  endif
endfunction

command! -nargs=* SetColors call s:SetColors('<args>')

" Set next/previous/random (how = 1/-1/0) color from our list of colors.
" The 'random' index is actually set from the current time in seconds.
" Global (no 's:') so can easily call from command line.
function! NextColor(how)
  call s:NextColor(a:how, 1)
endfunction

" Helper function for NextColor(), allows echoing of the color name to be
" disabled.
function! s:NextColor(how, echo_color)
  if len(s:mycolors) == 0
    call s:SetColors('all')
  endif
  if exists('g:colors_name')
    let current = index(s:mycolors, g:colors_name)
  else
    let current = -1
  endif
  let missing = []
  let how = a:how
  for i in range(len(s:mycolors))
    if how == 0
      let current = localtime() % len(s:mycolors)
      let how = 1  " in case random color does not exist
    else
      let current += how
      if !(0 <= current && current < len(s:mycolors))
        let current = (how>0 ? 0 : len(s:mycolors)-1)
      endif
    endif
    try
      execute 'colorscheme '.s:mycolors[current]
      break
    catch /E185:/
      call add(missing, s:mycolors[current])
    endtry
  endfor
  redraw
  if len(missing) > 0
    echo 'Error: colorscheme not found:' join(missing)
  endif
  if (a:echo_color)
    echo g:colors_name
  endif
endfunction

nnoremap ,ci :call NextColor(1)<CR>
nnoremap ,cI :call NextColor(-1)<CR>
nnoremap ,cr :call NextColor(0)<CR>

" Set color scheme according to current time of day.
function! s:HourColor()
  let hr = str2nr(strftime('%H'))
  if hr <= 3
    let i = 0
  elseif hr <= 7
    let i = 1
  elseif hr <= 14
    let i = 2
  elseif hr <= 18
    let i = 3
  else
    let i = 4
  endif
  let nowcolors = 'elflord morning desert evening pablo'
  execute 'colorscheme '.split(nowcolors)[i]
  redraw
  echo g:colors_name
endfunction
"testing changing colorscheme: end===================================

"temporary maps {{{1=
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! Diff(a,b)
     if a:a != a:b
         echo "found a diff!" a:a a:b
     endif
endfunc

func! Diff2(pat)
     call setpos('.',[0, 1, 1, 0]) " go to beginning
     while search(a:pat, 'W')
         let l = matchlist(getline('.'),a:pat)
         if len(l) >= 4 && l[1] != l[3]
             echo 'found a diff:' l[1] l[3]
         endif
     endwhile
endfunc

fun! FindDiffs()
  let i = 1
  let l = line('$')
  let buf = bufnr('.')
  let qf = []
  while i < l
"   let m = matchlist(getline(i), '\(abc\d\+\).*\(abc\d\+\)')
    let m = matchlist(getline(i), '\(demux\.\d\+\).*\(demux\.\d\+\)')
    if len(m)
      let [a, b] = m[1:2]
      if a != b
        " when not using qf, echo it: echom a '!=' b 'on line' i
        call add(qf, {'bufnr': buf, 'lnum': i, 'text': a.' != '.b, 'type': 'W'})
      end
    end
    let i += 1
  endw
  call setqflist(qf) | cw
endf

"nmap <F10> :%s/em1/ge-9\/0\/0/g<CR>:%s/em2/ge-9\/0\/1/g<CR>:%s/em3/ge-9\/0\/2/g<CR>:%s/em4/ge-9\/0\/3/g<CR>
"nmap <S-F10> :%s/ge-9\/0\/0/em1/g<CR>:%s/ge-9\/0\/1/em2/g<CR>:%s/ge-9\/0\/2/em3/g<CR>:%s/ge-9\/0\/3/em4/g<CR>

"these are used for dynagen login when preparing CCIE
"looks stupid, a better solution might be to source a normal mode script
"that can do the same operations
"gns k1
"map a1 :ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3101<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3102<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3103<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3104<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3105<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3111<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3112<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3113<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3114<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3121<CR><CR><CR><CR>

"gns k2
"map a2 :ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3201<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3202<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3203<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3204<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3205<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3211<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3212<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3213<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3214<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3221<CR><CR><CR><CR>

"gns k3
"map a3 :ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3301<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3302<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3303<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3304<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3305<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3311<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3312<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3313<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3314<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 3321<CR><CR><CR><CR>

"IOU k3
"map a0 :ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2001<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2002<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2003<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2004<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2005<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2006<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2007<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2008<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2009<CR><CR><CR><CR><ESC>:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2010<CR><CR><CR><CR>

"TS1++
"map a4 :ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2101<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2102<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2103<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2104<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2105<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2106<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2107<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2108<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2109<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2110<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2111<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2112<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2113<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2114<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2115<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2116<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2117<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2118<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2119<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2120<CR><CR><CR><CR><ESC>

"TS1++
"map a5 :ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2021<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2122<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2123<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2124<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2125<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2126<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2127<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2128<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2129<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2130<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2131<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2132<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2133<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2134<CR><CR><CR><CR><ESC>

"TS2++, R1-20
"map a6 :ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2201<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2202<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2203<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2204<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2205<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2206<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2207<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2208<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2209<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2210<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2211<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2212<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2213<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2214<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2215<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2216<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2217<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2218<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2219<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2220<CR><CR><CR><CR><ESC>

"TS2++, R21-35
"map a7 :ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2221<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2222<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2223<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2224<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2225<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2226<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2227<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2228<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2229<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2230<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2231<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2232<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2233<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2234<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 2235<CR><CR><CR><CR><ESC>

"TS1+, R1-20
"map a8 :ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5201<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5202<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5203<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5204<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5205<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5206<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5207<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5208<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5209<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5210<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5211<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5212<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5213<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5214<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5215<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5216<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5217<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5218<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5219<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5220<CR><CR><CR><CR><ESC>
"
""TS1+, R21-35
"map a9 :ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5221<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5222<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5223<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5224<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5225<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5226<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5227<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5228<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5229<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5230<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5231<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5232<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5233<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5234<CR><CR><CR><CR><ESC>
"    \:tabnew<CR>:ConqueTerm mylogin.tcl<CR><CR>telnet localhost 5235<CR><CR><CR><CR><ESC>
"
"partially working {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"


"need test...
"map <C-c> "+y
"map <C-S-c> "*y
"map <C-S-v> "*p
"n/w for consolevim, w/ for gvim
nmap <M-o> o<Esc>k

"testing, may not working {{{1 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"https://github.com/google/yapf/blob/master/.vimrc
" Force indentation styles for this directory
"autocmd FileType python set shiftwidth=2
"autocmd FileType python set tabstop=2
"autocmd FileType python set softtabstop=2

"https://github.com/mindriot101/vim-yapf#why-you-may-not-need-this-plugin
autocmd FileType python nn ,yp :0,$!yapf<Cr><C-o>
autocmd FileType python vn ,yp :!yapf<Cr><C-o>

"
"colorcheme changing {{{2
"testing changing colorscheme: begin===================================
" Change the color scheme from a list of color scheme names.
" Version 2010-09-12 from http://vim.wikia.com/wiki/VimTip341
" Press key:
"   F8                next scheme
"   Shift-F8          previous scheme
"   Alt-F8            random scheme
" Set the list of color schemes used by the above (default is 'all'):
"   :SetColors all              (all $VIMRUNTIME/colors/*.vim)
"   :SetColors my               (names built into script)
"   :SetColors blue slate ron   (these schemes)
"   :SetColors                  (display current scheme names)
" Set the current color scheme based on time of day:
"   :SetColors now
"if v:version < 700 || exists('loaded_setcolors') || &cp
"  finish
"endif

"test powerline, not working
"set rtp+=$(pip show powerline-status | awk '/Location:/{print $2 "/powerline/bindings/vim"}')
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
"
"
":nnoremap <leader>g :grep <cword> .<cr>
"function! stopwatch()
"

"not work
"========================================================================= 
" 
" FileName: vtimer.vim 
" Describle: automatic timer to measure time spent with vim 
" Commands: :Showtime  
" show totaltime used 
" :Resettime 
" reset totaltime 
" 
 " Author: leaforestd 
 " Email: leaforestd@gmail.com 
 " 
 " Created: May 10 21:28:47 CST 2012  
 " Version: 1.0 
 " History: 1.0 | leaforestd | May 10 21:28:47 CST 2012 | first released 
 " 
 "========================================================================= 
 
"function! Vtimer_enter() 
"let s:v_start = localtime() 
"endfunction 
"
"function! Vtimer_leave() 
"let s:v_end = localtime() 
"let s:v_add = s:v_end - s:v_start 
"let s:v_total = str2nr(readfile($HOME.'/.vim/vtimer/time')[0]) 
"let s:v_total = s:v_total + s:v_add 
"call writefile([s:v_total], $HOME.'/.vim/vtimer/time') 
"endfunction 
"
"function! Vtimer_show() 
"let s:v_total = str2nr(readfile($HOME.'/.vim/vtimer/time')[0]) 
"let s:v_h = s:v_total / 3600 
"let s:v_m = (s:v_total % 3600) / 60 
"let s:v_s = s:v_total % 60 
"echo s:v_h . 'h ' . s:v_m . 'm ' . s:v_s .'s' 
"endfunction 
"
"function! Vtimer_reset() 
"call writefile([0], $HOME.'/.vim/vtimer/time') 
"endfunction 
"
"autocmd VimEnter * call Vtimer_enter() 
"autocmd VimLeavePre * call Vtimer_leave() 
"
"command! Showtime call Vtimer_show() 
"command! Resettime call Vtimer_reset()


"these seems no use, intention is to speed up asciidoc2 syntax
"let g:vimsyn_minlines=300
"let g:vimsyn_maxlines=600

"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

"insert a timestamp in last line before every write
"doesn't work
"function DateInsert()
  "$delete
  "read !date
"endfunction
"autocmd FileWritePre *  call DateInsert()

"au! CursorHold *.[ch] nested call PreviewWord()
"func PreviewWord()
  "if &previewwindow			" don't do this in the preview window
    "return
  "endif
  "let w = expand("<cword>")		" get the word under cursor
  "if w =~ '\a'			" if the word contains a letter
"
    "" Delete any existing highlight before showing another tag
    "silent! wincmd P			" jump to preview window
    "if &previewwindow			" if we really get there...
      "match none			" delete existing highlight
      "wincmd p			" back to old window
    "endif
"
    " Try displaying a matching tag for the word under the cursor
    "try
       "exe "ptag " . w
    "catch
      "return
    "endtry
"
    "silent! wincmd P			" jump to preview window
    "if &previewwindow		" if we really get there...
	 "if has("folding")
	   "silent! .foldopen		" don't want a closed fold
	 "endif
	 "call search("$", "b")		" to end of previous line
	 "let w = substitute(w, '\\', '\\\\', "")
	 "call search('\<\V' . w . '\>')	" position cursor on match
	 " Add a match highlight to the word at this position
      "hi previewWord term=bold ctermbg=green guibg=green
	 "exe 'match previewWord "\%' . line(".") . 'l\%' . col(".") . 'c\k*"'
      "wincmd p			" back to old window
    "endif
  "endif
"endfun


"auto scrolling,don't work
nmap <C-F9> <C-E>:sleep 3500m<CR>j<F8>


"match any wrong IP address to error,
"prompt error for unknown reason
"match errorMsg /\(2[5][6-9]\|2[6-9][0-9]\|[3-9][0-9][0-9]\)[.]\[0-9]\{1,3\}[.][0-9]\{1,3\}[.][0-9]\{1,3\}\|\[0-9]\{1,3\}[.]\(2[5][6-9]\|2[6-9][0-9]\|\\\ \[3-9][0-9][0-9]\)[.][0-9]\{1,3\}[.][0-9]\\{1,3\}\|\[0-9]\{1,3\}[.][0-9]\{1,3\}[.]\(2[5]\\ \[6-9]\|\2[6-9][0-9]|[3-9][0-9][0-9]\)[.][0-9]\{1,3\}\\|[0-9]\{1,3\}[.][0-9]\{1,3\}[.][0-9]\{1,3\}[.]\\(2[5][6-9]\|2[6-9][0-9]\|\[3-9][0-9][0-9]\)/

"this doesn't work:( 
nmap <M-2> 2gt
"
"the following is for tab switching, use alt-n to select tabs
"looks doesn't work(intercepted by gnome-terminal)
function! TabPos_ActivateBuffer(num)  
     let s:count = a:num   
     exe "tabfirst"  
     exe "tabnext" s:count    
 endfunction  
   
 function! TabPos_Initialize()  
     for i in range(1, 9)   
         exe "map <M-" . i . "> :call TabPos_ActivateBuffer(" . i . ")<CR>"  
     endfor  
     exe "map <M-0> :call TabPos_ActivateBuffer(10)<CR>"  
 endfunction  
   
"(2018-03-01) avoid vimEnter to speedup
" autocmd VimEnter * call TabPos_Initialize() 

"this doesn't work as well
:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>

:ino <M-1> <C-o>1gt
:ino <M-2> <C-o>2gt
:ino <M-3> <C-o>3gt
:ino <M-4> <C-o>4gt
:ino <M-5> <C-o>5gt
:ino <M-6> <C-o>6gt
:ino <M-7> <C-o>7gt
:ino <M-8> <C-o>8gt
:ino <M-9> <C-o>9gt
:ino <M-0> <C-o>:tablast<CR>
"
"gq magic {{{2
func! GQeachline(...) range		"ping: comments
    let lnum=a:firstline

    while lnum <= a:lastline

        let line = getline(lnum)
        let l1len = len(line)
        echom "linenum: " . lnum . "length " . l1len

        if l1len >= 80
            echom "gq this line (" . l1len . " > tw!"
            exec "normal! gqqj"
        elseif line =~ '^\s*$'            "if it's an empty line
            echom "this line is empty"
        else
            echom "this line is short " . l1len
        endif

        let lnum=lnum+1

    endwhile

endfunc

""line number all changed
"    let lnum=a:firstline
"    while lnum <= a:lastline
"
"        let line = getline(lnum)
"        let l1len = len(line)
"
"        let nlinenum=lnum+1
"        let nline=getline(nlinenum)
"
"        if  nline =~ '^\s*$'
"        else
"            exec "normal! o\<esc>"
"        endif
"
"        let lnum=lnum+1
"
"    endwhile

command! -range=% -nargs=* GQeachline :<line1>,<line2>call GQeachline(<q-args>)

nmap ,gQ  :GQeachline<CR>


"obsolete--- {{{1

"all-in-one autocompletions, under insert mode,use tab right after some
"charactors to completeit, good! type a blank if a tab (instead of completion)
"is needed
"problem was: sames a blank after a word still make a search when actually a
"tab is needed, change it a big and now works!
"pending issue: after set dictionary, doesn't work well
"this is all solved by supertab plugin
function! SuperCleverTab()
    "check if at beginning of line or after a space
"    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"    my change
    if strpart( getline('.'), 0, col('.')-1 ) =~ '\s$\|^$'
	return "\<Tab>"
    else
	" do we have omni completion available
	if &omnifunc != ''
	    "use omni-completion 1. priority
	    return "\<C-X>\<C-O>"
	elseif &dictionary != ''
	    " no omni completion, try dictionary completio
	    return "\<C-K>"
	else
	    "use omni completion or dictionary completion
	    "use known-word completion
	    return "\<C-N>"
	endif
    endif
endfunction
" bind function to the tab key
"inoremap <Tab> <C-R>=SuperCleverTab()<cr>
"

"fixed this - move to the end to avoid being reset by other configs
"(2013-12-03) , only from now with 256 color teminal!
set t_Co=256
