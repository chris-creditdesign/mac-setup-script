local function goyo_enter()
	print("GoyoEnter")
	if vim.fn.executable('tmux') == 1 and vim.fn.strlen(vim.env.TMUX) > 0 then
		vim.cmd('silent !tmux set status off')
		if vim.fn.system('tmux list-panes -F \'\\#F\' | grep -q Z') ~= 0 then
			vim.cmd('silent !tmux resize-pane -Z')
		end
	end
	vim.opt.wrap = true
	vim.opt.linebreak = true
	vim.opt.scrolloff = 999
	vim.cmd('Limelight')
end

local function goyo_leave()
	print("GoyoLeave")
	if vim.fn.executable('tmux') == 1 and vim.fn.strlen(vim.env.TMUX) > 0 then
		vim.cmd('silent !tmux set status on')
		if vim.fn.system('tmux list-panes -F \'\\#F\' | grep -q Z') == 0 then
			vim.cmd('silent !tmux resize-pane -Z')
		end
	end
	vim.opt.wrap = false
	vim.opt.linebreak = false
	vim.opt.scrolloff = 8
	vim.cmd('Limelight!')
end

vim.api.nvim_create_autocmd("User", {
	pattern = "GoyoEnter",
	nested = true,
	callback = goyo_enter
})

vim.api.nvim_create_autocmd("User", {
	pattern = "GoyoLeave",
	nested = true,
	callback = goyo_leave
})
