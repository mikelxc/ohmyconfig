require('bufferline').setup {
  options = {
				diagnostics = "nvim_lsp",
				offsets = {
                {
                    filetype = "neo-tree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left"
                }
            },
				custom_filter = function(buf_number, buf_numbers)
								if buf_numbers[1] ~= buf_number then
												return true
								end
				end,
}
}
