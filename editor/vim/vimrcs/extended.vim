" autocommand

augroup autoSource
	:autocmd BufWrite $MYVIMRC :source $MYVIMRC
augroup END

augroup testgroup
	:autocmd BufNewFile * :write
	:autocmd BufWrite * :echom "Write Buffer ..."
augroup END


function ShowMessage(name)
	" => warning 'a'
	let tmp_name = a:name
	echo tmp_name
	let name_len = strlen(tmp_name)
	echo name_len
	finish
endfunction
