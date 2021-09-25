if exists('g:loaded_width') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo 
set cpo&vim

command! Whid lua require'whid'.whid()

let &cpo = s:save_cpo
unlet s:save_cpo  

let g:loaded_whid = 1
