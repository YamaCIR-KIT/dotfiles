let g:quickrun_config = {
\   "cpp/g++" : {
\       "cmdopt" : "-std=c++0x -Wall",
\       "hook/time/enable" : 1
\   },
\
\   "tex" : {
\       "command" : "latexmk",
\       "outputter" : "error",
\       "outputter/error/success" : "null",
\       "outputter/error/error" : "quickfix",
\       "srcfile" : expand("%"),
\       "cmdopt" : "-pdfdvi -pvc",
\       "hook/sweep/files" : [
\           "%S:p:r.aux",
\           "%S:p:r.bbl",
\           "%S:p:r.blg",
\           "%S:p:r.dvi",
\           "%S:p:r.fdb_latexmk",
\           "%S:p:r.fls",
\           "%S:p:r.log",
\           "%S:p:r.out"
\       ],
\       "exec" : "%c %o %a %s",
\   }
\}
