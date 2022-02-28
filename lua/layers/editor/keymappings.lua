local utils = require('core.utils')
local cosmos = require('core.cosmos')
local options = require('layers.editor.options')

cosmos.add_leader_keymapping('n|bb', { "<cmd>lua require('telescope.builtin').buffers { sort_mru = true }<cr>", name = 'List buffers' })
cosmos.add_leader_keymapping('n|bn', { ':BufferLineCycleNext<CR>', name = 'Next buffer' })
cosmos.add_leader_keymapping('n|bp', { ':BufferLineCyclePrev<CR>', name = 'Previous buffer' })
cosmos.add_leader_keymapping('n|bd', { ':bw<CR>', name = 'Delete buffer' })

cosmos.add_leader_keymapping('n|ff', { "<cmd>lua require('layers.editor.functions').find_current_directory_files()<CR>", name = 'Find file' })
cosmos.add_leader_keymapping('n|fb', { ":Telescope file_browser<CR>", name = 'File browser' })
cosmos.add_leader_keymapping('n|fr', { '<cmd>Telescope oldfiles<cr>', name = 'Open recent file', noremap = false })
cosmos.add_leader_keymapping('n|ft', { '<cmd>NvimTreeToggle<cr>', name = 'File tree', noremap = false })

cosmos.add_leader_keymapping('n|fed', { "<cmd>e ~/.cosmos-nvim.lua<CR>", name = 'Open cosmos configuration file' })
cosmos.add_leader_keymapping('n|feD', { "<cmd>lua require('layers.editor.functions').edit_neovim()<CR>", name = 'Open cosmos source files' })
cosmos.add_leader_keymapping('n|feR', { "<cmd>lua require('layers.editor.functions').reload_configuration()<CR>", name = 'Reload configuration' })

cosmos.add_leader_keymapping('n|pp', { '<cmd>Telescope projects theme=' .. options.telescope_theme .. '<cr>', name = 'Switch project' })
cosmos.add_leader_keymapping('n|pf', { '<cmd>Telescope find_files<CR>', name = 'Find project files' })

cosmos.add_leader_keymapping('n|jj', { '<cmd>HopChar1<cr>', name = 'Jump to char' })
utils.set_keymap('v', 'jj', '<cmd>HopChar1<cr>', {})
cosmos.add_leader_keymapping('n|jl', { '<cmd>HopLine<cr>', name = 'Jump to line' })
cosmos.add_leader_keymapping('n|ji', { "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", name = 'Jump to symbol' })

cosmos.add_leader_keymapping('n|se', { ':Lspsaga rename<CR>', name = 'Edit symbol' })
cosmos.add_leader_keymapping('n|ss', { "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find { fuzzy = false, case_mode = 'ignore_case' }<cr>", name = 'Search current buffer' })
cosmos.add_leader_keymapping('n|sh', { "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", name = 'Hover symbol' })
cosmos.add_leader_keymapping('n|sp', { "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", name = "Preview symbol" })
cosmos.add_leader_keymapping('n|sH', { "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", name = 'Show symbol signature' })

cosmos.add_leader_keymapping('n|el', { "<cmd>TroubleToggle document_diagnostics<cr>", name = 'List errors' })
cosmos.add_leader_keymapping('n|eL', { "<cmd>TroubleToggle workspace_diagnostics<cr>", name = 'List workspace errors' })
cosmos.add_leader_keymapping('n|en', { ':Lspsaga diagnostic_jump_next<CR>', name = 'Next error' })
cosmos.add_leader_keymapping('n|ep', { ':Lspsaga diagnostic_jump_prev<CR>', name = 'Previous error' })
cosmos.add_leader_keymapping('n|ef', { ':Telescope lsp_code_actions<CR>', name = 'Fix error' })
-- cosmos.add_leader_keymapping('n|ef', { ':Lspsaga code_action<CR>', name = 'Fix error' })

cosmos.add_leader_keymapping('n|db', { "<CMD>lua require('dap').toggle_breakpoint()<CR>", name = 'Toggle breakpoint', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|dP', { "<CMD>lua require('dap').pause()<CR>", name = 'Pause', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|dK', { "<CMD>lua require('dapui').float_element()<CR>", name = 'Float element', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|dR', { "<CMD>lua require('dapui').float_element('repl')<CR>", name = 'REPL', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|dn', { "<CMD>lua require('dap').step_over()<CR>", name = 'Step over', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|ds', { "<CMD>lua require('dap').step_into()<CR>", name = 'Step into', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|do', { "<CMD>lua require('dap').step_out()<CR>", name = 'Step out', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|dc', { "<CMD>lua require('dap').continue()<CR>", name = 'Continue', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|dr', { "<CMD>lua require('layers.editor.functions').run_dap()<CR>", name = 'Run', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|dS', { "<CMD>lua require('layers.editor.functions').stop_dap()<CR>", name = 'Stop', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|dt', { "<CMD>lua require('dapui').toggle()<CR>", name = 'Toggle', silent = true, noremap = true })
cosmos.add_leader_keymapping('n|dC', { "<CMD>lua require('dapui').close()<CR>", name = 'Close', silent = true, noremap = true })

cosmos.add_leader_keymapping('v|;;', { 'gcc<Esc>', name = 'Comment line', noremap = false })

cosmos.add_leader_keymapping("n|'", { '<Cmd>exe v:count1 . "ToggleTerm"<CR>', name = 'Open shell' })
cosmos.add_leader_keymapping('n|*', { "<cmd>lua require('telescope.builtin').lsp_references()<cr>", name = 'Search reference in current project' })
cosmos.add_leader_keymapping('n|/', { ':Telescope live_grep<CR>', name = 'Search project' })
cosmos.add_leader_keymapping('n|<Tab>', { ':b#<CR>', name = 'Last buffer' })
cosmos.add_leader_keymapping('n|<Space>', { "<cmd>lua require('layers.editor.functions').commands(require('telescope.themes').get_" .. options.telescope_theme .. "({}))<CR>", name = 'Commands' })

utils.nmap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
utils.nmap('gD', ':Lspsaga preview_definition<CR>')
utils.set_keymap('n', '<C-f>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", { noremap = true, silent = true })
utils.set_keymap('n', '<C-b>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", { noremap = true, silent = true })
utils.set_keymap('n', '<leader>;;', 'gcc', {})
utils.set_keymap('v', '<leader>;', 'gcc<esc>', {})
utils.set_keymap('t', '<A-d>', '<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>', {})

