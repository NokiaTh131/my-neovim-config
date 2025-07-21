return {
  {
    'b0o/incline.nvim',
    config = function()
      require('incline').setup {
        window = {
          padding = 0,
          margin = { horizontal = 0 },
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
          local modified = vim.bo[props.buf].modified
          return {
            ' ',
            filename,
            modified and { ' *', guifg = '#888888', gui = 'bold' } or '',
            ' ',
            guibg = '#524f67',
            guifg = '#e0def4',
          }
        end
      }
    end,
    -- Optional: Lazy load Incline
    event = 'VeryLazy',
  },
}
