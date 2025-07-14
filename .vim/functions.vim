
function! IsWSL()
	if has("unix") && filereadable("/proc/version")
		let lines = readfile("/proc/version")
		if lines[0] =~ "Microsoft"
			return 1
		endif
	endif
	return 0
endfunction
