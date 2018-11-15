nnoremap <silent> <Plug>(sidemenu) :<C-u>call sidemenu#open(0)<cr>
xnoremap <silent> <Plug>(sidemenu-visual) :<C-u>call sidemenu#open(1)<cr>


function! SaveWorkspace()
  let grep_term = input("Enter save name: ")
  if !empty(grep_term)
    execute 'silent CtrlSpaceSaveWorkspace' grep_term | copen
  else
    execute 'silent CtrlSpaceSaveWorkspace' | copen
  endif
  redraw!
endfunctio


let g:sidemenu = [
	\   { 'title': 'General & Plugins',
	\     'children': [
	\       ['gu', 'PlugUpdate', 'Plugins update', 'Update all plugins'],
	\       ['gs', 'PlugStatus', 'Plugins status'],
	\       ['gm', 'PlugUpgrade', 'Plugins manager update'],
	\   ]},
	\   { 'title': 'Session Manager',
	\     'children': [
	\       ['si', 'CtrlSpace', 'List of workspaces'],
	\       ['sn', 'CtrlSpaceNewWorkspace', 'Create new workspace'],
	\       ['ss', 'silent call SaveWorkspace()', 'Save workspace'],
	\       ['sl', 'CtrlSpaceNewWorkspace', 'Load workspace'],
	\       ['sa', 'CtrlSpaceAddProjectRoot', 'Add project root'],
	\       ['se', 'CtrlSpaceRemoveProjectRoot', 'Remove workspace root'],
	\       ['st', 'CtrlSpaceTabLabel', 'Add worskapce label'],
	\       ['sc', 'CtrlSpaceClearTabLabel', 'Remove worskpace lable'],
	\   ]},
	\   { 'title': 'Files',
	\     'children': [
	\       ['fe', 'NERDTreeToggle', 'File explorer'],
	\   ]},
	\   { 'title': 'Tools',
	\     'children': [
	\   ]},
	\   { 'title': 'System',
	\     'children': [
	\       ['1', 'CheckHealth', 'Check health'],
	\       ['2', 'echo dein#get_updates_log()', 'View updates log'],
	\       ['3', 'echo dein#get_log()', 'View dein log'],
	\   ]},
\ ]
