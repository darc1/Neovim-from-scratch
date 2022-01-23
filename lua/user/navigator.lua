-- Setup navigator.
local status_ok, navigator = pcall(require, "navigator")
if not status_ok then
	return
end

navigator.setup({
	default_mapping = false,
	keymaps = {
		 { key = 'gr', func = "require('navigator.reference').reference()" },
		 { key = 'Gr', func = "require('navigator.reference').async_ref()" },
		--  { mode = 'i', key = '<M-k>', func = 'signature_help()' },
		--  { key = '<c-k>', func = 'signature_help()' },
		--  { key = 'g0', func = "require('navigator.symbols').document_symbols()" },
		--  { key = 'gW', func = "require('navigator.workspace').workspace_symbol()" },
		{ key = "gd", func = "require('navigator.definition').definition()" },
		--  { key = 'gD', func = "declaration({ border = 'rounded', max_width = 80 })" },
		--  { key = 'gp', func = "require('navigator.definition').definition_preview()" },
		--  { key = '<Leader>gt', func = "require('navigator.treesitter').buf_ts()" },
		--  { key = '<Leader>gT', func = "require('navigator.treesitter').bufs_ts()" },
		--  { key = 'K', func = 'hover({ popup_opts = { border = single, max_width = 80 }})' },
		 -- { key = '<Leader>a', mode = 'n', func = "require('navigator.codeAction').code_action()" },
		 -- { key = '<Leader>a', mode = 'v', func = 'range_code_action()' },
		--  { key = '<Leader>re', func = 'rename()' },
		 -- { key = '<Leader>lr', func = "require('navigator.rename').rename()" },
		 { key = '<Leader>gi', func = 'incoming_calls()' },
		 { key = '<Leader>go', func = 'outgoing_calls()' },
		 { key = 'gi', func = 'implementation()' },
		 { key = '<Leader>D', func = 'type_definition()' },
		 { key = 'gL', func = "require('navigator.diagnostics').show_diagnostics()" },
		 { key = 'gG', func = "require('navigator.diagnostics').show_buf_diagnostics()" },
		--  { key = '<Leader>dt', func = "require('navigator.diagnostics').toggle_diagnostics()" },
		 { key = ']g', func = "diagnostic.goto_next({ border = 'rounded', max_width = 80})" },
		 { key = '[g', func = "diagnostic.goto_prev({ border = 'rounded', max_width = 80})" },
		 { key = ']r', func = "require('navigator.treesitter').goto_next_usage()" },
		 { key = '[r', func = "require('navigator.treesitter').goto_previous_usage()" },
		--  { key = '<C-LeftMouse>', func = 'definition()' },
		--  { key = 'g<LeftMouse>', func = 'implementation()' },
		--  { key = '<Leader>k', func = "require('navigator.dochighlight').hi_symbol()" },
		--  { key = '<Leader>wa', func = "require('navigator.workspace').add_workspace_folder()" },
		--  { key = '<Leader>wr', func = "require('navigator.workspace').remove_workspace_folder()" },
		--  { key = '<Leader>lf', func = 'formatting()', mode = 'n' },
		--  { key = '<Leader>lf', func = 'range_formatting()', mode = 'v' },
		--  { key = '<Leader>wl', func = "require('navigator.workspace').list_workspace_folders()" },
		--  { key = '<Leader>cl', mode = 'n', func = "require('navigator.codelens').run_action()" },
	},
	lsp = {
		format_on_save = true,
	},
})

vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
-- navigator.setup({ lsp_installer = true })
