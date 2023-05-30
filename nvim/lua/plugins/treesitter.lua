require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    'c', 'cpp', 'python', 'java', 'javascript',
    'typescript', 'go', 'css', 'sql', 
    'yaml', 'bash', 'lua', 'vim', 'json', 'make' },

  highlight = { enable = true },
  indent = { enable = true },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
