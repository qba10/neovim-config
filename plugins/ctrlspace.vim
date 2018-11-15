
if exists(':CtrlSpace')
	"search options
	"nnoremap <silent><C-f> :CtrlSpace O<CR>
	if executable("ag")
    		let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
	endif
	let g:CtrlSpaceSearchTiming = 500

	let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
	let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
	let g:CtrlSpaceSaveWorkspaceOnExit = 1
	let g:CtrlSpaceUseMouseAndArrowsInTerm = 1 
endif

