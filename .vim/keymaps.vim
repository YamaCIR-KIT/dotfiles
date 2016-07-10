" -------------------------------------------------------------------
"  Normal
" -------------------------------------------------------------------
nnoremap ; :
nnoremap Y y$
nnoremap + <c-a>
nnoremap - <c-x>

nnoremap j jzz
nnoremap k kzz


" -------------------------------------------------------------------
"  Insert
" -------------------------------------------------------------------
inoremap <> <><left>
inoremap {} {}<left>
inoremap [] []<left>
inoremap () ()<left>
inoremap "" ""<left>
inoremap '' ''<left>
inoremap $$ $$<left>
inoremap && &&<left>
inoremap /* /*<space><space>*/<esc>2hi

inoremap <c-h> <esc>I
inoremap <c-j> <esc>o
inoremap <c-k> <esc>O
inoremap <c-l> <end>

inoremap <c-o> <c-o>:<c-u>


" -------------------------------------------------------------------
"  Visual
" -------------------------------------------------------------------
vnoremap ; :s/

vmap # <c-v>0I#<space><esc>
vmap / <c-v>0I//<space><esc>
vmap % <c-v>0I%<space><esc>


" -------------------------------------------------------------------
"  Search
" -------------------------------------------------------------------
nnoremap <esc><esc> :<c-u>noh<cr>

nnoremap / :<c-u>set<space>hlsearch<cr>/
nnoremap ? :<c-u>set<space>hlsearch<cr>?
nnoremap * :<c-u>set<space>hlsearch<cr>*
nnoremap # :<c-u>set<space>hlsearch<cr>#


" -------------------------------------------------------------------
"  Automatic Input of AutoText fot C/C++
" -------------------------------------------------------------------
inoremap <c-a> <nop>

inoremap <c-a>inc  #include<space><><left>

inoremap <c-a>def  #define<space>

inoremap <c-a>mav  int<space>main(void)<space>{<cr><cr>}<esc>Ocr<space>1;<esc>kO
inoremap <c-a>mai  int<space>main(int<space>argc,<space>char**<space>argv)<space>{<cr><cr>}<esc>Oreturn<space>0;<esc>kO

inoremap <c-a>nam  using<space>namespace<space>;<left>
inoremap <c-a>str  struct<space><space>{<cr>};<esc>k$hi
inoremap <c-a>typ  typedef<space>
inoremap <c-a>cls  class<space><space>{<cr>public:<cr>private:<cr>};<esc>h%hi
inoremap <c-a>if   if<space>()<space>{<cr>}<esc>%2hi
inoremap <c-a>wh   while<space>()<space>{<cr>}<esc>%2hi
inoremap <c-a>sw   switch<space>()<space>{<cr>}<esc>%2hi
inoremap <c-a>for  for<space>(i=0;<space>;<space>i++)<esc>5hi

inoremap <c-a>pf   printf("\n");<esc>4hi

inoremap <c-a>out  std::cout<space><<<space><space><<<space>std::endl;<esc>13hi


" -------------------------------------------------------------------
"  Automatic Input of AutoText fot LaTeX
" -------------------------------------------------------------------
function! s:InputLatexBegin(...)
  if a:0 > 0
    let str_begin = "\\begin{".a:1."}\n"
    let str_end = "\\end{".a:1."}"
    execute "normal I".str_begin."  \n".str_end."\<esc>k"
  else
    echo "error: no arguments"
    let str_begin = "\\begin{}\n"
    let str_end = "\\end{}"
    execute "normal I".str_begin."  \n".str_end."\<esc>k"
  end
endfunction

command! -nargs=? LatexBegin call s:InputLatexBegin(<f-args>)

"inoremap <c-a>beg  \begin{<cr>\end{}<esc>x<C-v>k$A
"inoremap <c-a>eqn  \begin{eqnarray}<cr>\end{eqnarray}<esc>O

inoremap <c-a>big  \biggl(<space><space>\biggr)<esc>7hi
inoremap <c-a>fig  \begin{figure}[h]<cr>\begin{center}<cr>\includegraphics[width=1.0\hsize]{.eps}<cr>\end{center}<cr>\caption{}<cr>\label{fig:}<cr>\end{figure}
inoremap <c-a>tab  \begin{table}[h]<cr>\begin{center}<cr>\caption{}<cr>\begin{tabular}{}<space>\hline<cr>\end{tabular}<cr>\label{tab:}<cr>\end{center}<cr>\end{table}
inoremap <c-a>des  \begin{description}<cr>\item[]<space>\mbox{}<space>\\<cr>\item[]<space>\mbox{}<space>\\<cr>\end{description}
inoremap <c-a>enu  \begin{enumerate}<cr>\item<space><cr>\item<space><cr>\end{enumerate}

inoremap <c-a>sec  \section{}<cr>\setcounter{equation}{1}<cr>\setcounter{figure}{0}<cr>\setcounter{table}{0}<esc>3kA<left>


" -------------------------------------------------------------------
"  Test
" -------------------------------------------------------------------

