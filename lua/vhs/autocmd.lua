local vhs_au = vim.api.nvim_create_augroup('VHS', { clear = true })

-- Highlight the region on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vhs_au,
  callback = function()
    vim.highlight.on_yank()
  end,
  pattern = '*',
})

-- Jump to the last place in the file before exiting
vim.api.nvim_create_autocmd('BufReadPost', {
  group = vhs_au,
  callback = function(data)
    local last_pos = vim.api.nvim_buf_get_mark(data.buf, '"')
    if last_pos[1] > 0 and last_pos[1] <= vim.api.nvim_buf_line_count(data.buf) then
      vim.api.nvim_win_set_cursor(0, last_pos)
    end
  end,
})
