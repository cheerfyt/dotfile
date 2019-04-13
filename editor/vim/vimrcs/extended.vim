" add autocommand here
"============================= ToggleNubmer ====================================
function! ToggleNumber()
	if (&relativenumber == 1)
		set number
	elseif(&number == 1)
		set nonumber
	else
		set relativenumber
	endif
endfunction
nnoremap <Leader>n :call ToggleNumber()<ESC>
"============================= ToggleNubmer ====================================
