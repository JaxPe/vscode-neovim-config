if vim.g.vscode then
  local vscode = require('vscode')

  -- Leader Key do NvChad: Espaço
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "

  local map = vim.keymap.set
  local opts = { noremap = true, silent = true }

  map('n', '<leader>j', 'J', opts)
  map({ 'n', 'v' }, 'J', '5j', opts)
  map({ 'n', 'v' }, 'K', '5k', opts)
  map('n', '<leader>p', function()
    vscode.action('workbench.action.quickOpen')
  end, opts)
  map('n', '<leader>P', function()
    vscode.action('workbench.action.showCommands')
  end, opts)

  -- NAVEGAÇÃO DE BUFFERS / ABAS (Tabufline do NvChad)
  -- <Tab> e <S-Tab> para alternar entre abas/editores
  map('n', '<Tab>', function() vscode.action('workbench.action.nextEditor') end, opts)
  map('n', '<S-Tab>', function() vscode.action('workbench.action.previousEditor') end, opts)

  -- <leader>x: Fechar buffer atual
  map('n', '<leader>x', function() vscode.action('workbench.action.closeActiveEditor') end, opts)

  -- <leader>b: Novo buffer
  map('n', '<leader>b', function() vscode.action('workbench.action.files.newUntitledFile') end, opts)

  -- FILE EXPLORER (NvimTree no NvChad)
  -- <C-n> ou <leader>e: Abrir / Focar no Explorer de arquivos
  map('n', '<C-n>', function() vscode.action('workbench.view.explorer') end, opts)
  map('n', '<leader>e', function() vscode.action('workbench.action.toggleSidebarVisibility') end, opts)
  
  map({'n', 'x'}, '<leader>/', function() vscode.action('editor.action.commentLine') end, opts)

  -- BUSCA / TELESCOPE
  -- <leader>ff: Find files (Quick Open)
  map('n', '<leader>ff', function() vscode.action('workbench.action.quickOpen') end, opts)

  -- <leader>fw: Live grep / Find in files
  map('n', '<leader>fw', function() vscode.action('workbench.action.findInFiles') end, opts)

  -- <leader>fb: Find buffers abertos
  map('n', '<leader>fb', function() vscode.action('workbench.action.showAllEditorsByMostRecentlyUsed') end, opts)

  -- <leader>fo: Oldfiles / Arquivos recentes
  map('n', '<leader>fo', function() vscode.action('workbench.action.openRecent') end, opts)

  -- <leader>fz: Busca rápida no buffer atual
  map('n', '<leader>fz', function() vscode.action('actions.find') end, opts)

  -- <leader>th: Trocar tema (NvChad themes)
  map('n', '<leader>th', function() vscode.action('workbench.action.selectTheme') end, opts)

  -- <leader>cm: Git commits / Source Control
  map('n', '<leader>cm', function() vscode.action('workbench.view.scm') end, opts)

  -- LSP & DIAGNÓSTICOS
  -- gd: Go to definition
  map('n', 'gd', function() vscode.action('editor.action.revealDefinition') end, opts)

  -- gr: Go to references
  map('n', 'gr', function() vscode.action('editor.action.goToReferences') end, opts)

  -- gi: Go to implementation
  map('n', 'gi', function() vscode.action('editor.action.goToImplementation') end, opts)

  -- K: Hover doc
--   map('n', 'K', function() vscode.action('editor.action.showHover') end, opts)

  -- <leader>ra: Rename symbol
  map('n', '<leader>ra', function() vscode.action('editor.action.rename') end, opts)

  -- <leader>ca: Code action (Quick Fix)
  map({ 'n', 'v' }, '<leader>ca', function() vscode.action('editor.action.quickFix') end, opts)

  -- <leader>fm: Formatar documento
  map('n', '<leader>fm', function() vscode.action('editor.action.formatDocument') end, opts)

  -- [d e ]d: Diagnóstico anterior / próximo (erros e warnings)
  map('n', '[d', function() vscode.action('editor.action.marker.prev') end, opts)
  map('n', ']d', function() vscode.action('editor.action.marker.next') end, opts)

  -- MOVIMENTAÇÃO ENTRE JANELAS / SPLITS (Ctrl + h/j/k/l)
  map('n', '<C-h>', function() vscode.action('workbench.action.navigateLeft') end, opts)
  map('n', '<C-j>', function() vscode.action('workbench.action.navigateDown') end, opts)
  map('n', '<C-k>', function() vscode.action('workbench.action.navigateUp') end, opts)
  map('n', '<C-l>', function() vscode.action('workbench.action.navigateRight') end, opts)

  -- TERMINAL
  -- <A-i> ou <leader>h: Toggle do terminal integrado
  map({ 'n', 't' }, '<A-i>', function() vscode.action('workbench.action.terminal.toggleTerminal') end, opts)
  map('n', '<leader>h', function() vscode.action('workbench.action.terminal.toggleTerminal') end, opts)

  -- GIT HUNK NAVIGATION (Gitsigns no NvChad)
  map('n', ']c', function() vscode.action('workbench.action.editor.nextChange') end, opts)
  map('n', '[c', function() vscode.action('workbench.action.editor.previousChange') end, opts)
  map('n', '<leader>rh', function() vscode.action('git.revertSelectedRanges') end, opts)
end
