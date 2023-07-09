local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
	return
end

-- configure indent_blankline
indent_blankline.setup({
	char = "▏",
	use_treesitter = true,
	max_indent_increase = 1,
	show_current_context = true,
	show_current_context_start = true,
})
