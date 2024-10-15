
function! IsWSL()
	if has("unix") && filereadable("/proc/version")
		let lines = readfile("/proc/version")
		if lines[0] =~ "Microsoft"
			return 1
		endif
	endif
	return 0
endfunction

function! s:DeleteOldBackups()
	" Delete backups over 14 days old
	let l:Old = (60 * 60 * 24 * 14)
	let l:BackupFiles = split(glob(&backupdir."/*", 1)."\n".glob(&backupdir."/.[^.]*",1), "\n")
	let l:Now = localtime()

	for l:File in l:BackupFiles
		if (l:Now - getftime(l:File)) > l:Old
			call delete(l:File)
		endif
	endfor
endfunction

