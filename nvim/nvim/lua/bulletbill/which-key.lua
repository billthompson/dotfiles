local M = {}

local wk = require("which-key")

wk.setup {
  window = {
    border = "single", -- none, single, double, shadow
  },
  layout = {
    spacing = 5,
  },
}

local opts = {
  mode = "n", -- normal mode
  prefix = "<leader>",
  buffer = nil, -- global mappings. specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

wk.register({
  f = {
    name = "Find",
    f = { "<cmd>lua require('telescope.builtin').find_files()<cr>", "Files" },
    d = { "<cmd>lua require('utils.finder').find_dotfiles()<cr>", "Dotfiles" },
    b = { "<cmd>lua require('telescope.builtin').buffers()<cr>", "Buffers" },
    h = { "<cmd>lua require('telescope.builtin').help_tags()<cr>", "Help" },
    m = { "<cmd>lua require('telescope.builtin').marks()<cr>", "Marks" },
    o = { "<cmd>lua require('telescope.builtin').oldfiles()<cr>", "Old Files" },
    g = { "<cmd>lua require('telescope.builtin').live_grep()<cr>", "Live Grep" },
    c = { "<cmd>lua require('telescope.builtin').commands()<cr>", "Commands" },
    r = { "<cmd>lua require'telescope'.extensions.file_browser.file_browser()<cr>", "File Browser" },
    w = { "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", "Current Buffer" },
    e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
  },

  t = {
    name = "Neotest",
    a = { "<cmd>lua require('neotest').run.attach()<cr>", "Attach" },
    b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    c = { "<cmd>lua require'dap'.continue()<cr>", "Start/Continue Debugging" },
    F10 = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
    F11 = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
    F12 = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
    f = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Run File" },
    F = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Debug File" },
    l = { "<cmd>lua require('neotest').run.run_last()<cr>", "Run Last" },
    L = { "<cmd>lua require('neotest').run.run_last({ strategy = 'dap' })<cr>", "Debug Last" },
    n = { "<cmd>lua require('neotest').run.run()<cr>", "Run Nearest" },
    N = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Debug Nearest" },
    o = { "<cmd>lua require('neotest').output.open({ enter = true })<cr>", "Output" },
    S = { "<cmd>lua require('neotest').run.stop()<cr>", "Stop" },
    s = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Summary" },
  },
}, opts)

wk.register({
  ["ga"] = { "<Plug>(EasyAlign)" },
}, { mode = "n" })

wk.register({
  ["ga"] = { "<Plug>(EasyAlign)" },
}, { mode = "v" })

--local v_opts = {
  --mode = "v", -- Visual mode
  --prefix = "<leader>",
  --buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  --silent = true, -- use `silent` when creating keymaps
  --noremap = true, -- use `noremap` when creating keymaps
  --nowait = false, -- use `nowait` when creating keymaps
--}

--local function normal_keymap()
  --local keymap_p = nil -- Project search

  --keymap_p = {
    --name = "Project",
    --p = { "<cmd>lua require'telescope'.extensions.project.project{display_type = 'full'}<cr>", "List" },
    --s = { "<cmd>lua require'telescope'.extensions.repo.list{}<cr>", "Search" },
    --P = { "<cmd>TermExec cmd='BROWSER=brave yarn dev'<cr>", "Slidev" },
  --}

  --local keymap = {
    --["w"] = { "<cmd>update!<CR>", "Save" },
    --["q"] = { "<cmd>q!<CR>", "Quit" },
    ---- ["t"] = { "<cmd>ToggleTerm<CR>", "Terminal" },

    --f = {
      --name = "Find",
      --f = { "<cmd>lua require('telescope.builtin').find_files()<cr>", "Files" },
      --d = { "<cmd>lua require('utils.finder').find_dotfiles()<cr>", "Dotfiles" },
      --b = { "<cmd>lua require('telescope.builtin').buffers()<cr>", "Buffers" },
      --h = { "<cmd>lua require('telescope.builtin').help_tags()<cr>", "Help" },
      --m = { "<cmd>lua require('telescope.builtin').marks()<cr>", "Marks" },
      --o = { "<cmd>lua require('telescope.builtin').oldfiles()<cr>", "Old Files" },
      --g = { "<cmd>lua require('telescope.builtin').live_grep()<cr>", "Live Grep" },
      --c = { "<cmd>lua require('telescope.builtin').commands()<cr>", "Commands" },
      --r = { "<cmd>lua require'telescope'.extensions.file_browser.file_browser()<cr>", "File Browser" },
      --w = { "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>", "Current Buffer" },
      --e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
    --},
    --p = keymap_p,

    --n = {
      --name = "Neotest",
      --a = { "<cmd>lua require('neotest').run.attach()<cr>", "Attach" },
      --f = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Run File" },
      --F = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Debug File" },
      --l = { "<cmd>lua require('neotest').run.run_last()<cr>", "Run Last" },
      --L = { "<cmd>lua require('neotest').run.run_last({ strategy = 'dap' })<cr>", "Debug Last" },
      --n = { "<cmd>lua require('neotest').run.run()<cr>", "Run Nearest" },
      --N = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Debug Nearest" },
      --o = { "<cmd>lua require('neotest').output.open({ enter = true })<cr>", "Output" },
      --S = { "<cmd>lua require('neotest').run.stop()<cr>", "Stop" },
      --s = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Summary" },
    --},
  --}

  --whichkey.register(keymap, opts)
--end

--local function visual_keymap()
  --local keymap = {
    ----g = {
      ----name = "Git",
      ----y = {
        ----"<cmd>lua require'gitlinker'.get_buf_range_url('v', {action_callback = require'gitlinker.actions'.open_in_browser})<cr>",
        ----"Link",
      ----},
    ----},

    ----r = {
      ----name = "Refactor",
      ----e = { [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], "Extract Function" },
      ----f = {
        --[> <Esc><Cmd>lua require('refactoring').refactor('Extract Function to File')<CR><],
        ----"Extract Function to File",
      ----},
      ----v = { [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], "Extract Variable" },
      ----i = { [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], "Inline Variable" },
      ----r = { [[ <Esc><Cmd>lua require('telescope').extensions.refactoring.refactors()<CR>]], "Refactor" },
      ----V = { [[ <Esc><Cmd>lua require('refactoring').debug.print_var({})<CR>]], "Debug Print Var" },
    ----},
  --}

  --whichkey.register(keymap, v_opts)
--end

--local function code_keymap()
  --if vim.fn.has "nvim-0.7" then
    --vim.api.nvim_create_autocmd("FileType", {
      --pattern = "*",
      --callback = function()
        --vim.schedule(CodeRunner)
      --end,
    --})
  --else
    --vim.cmd "autocmd FileType * lua CodeRunner()"
  --end

  --function CodeRunner()
    --local bufnr = vim.api.nvim_get_current_buf()
    --local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
    --local fname = vim.fn.expand "%:p:t"
    --local keymap_c = {} -- normal key map
    --local keymap_c_v = {} -- visual key map

    --if ft == "python" then
      --keymap_c = {
        --name = "Code",
        --r = { "<cmd>update<CR><cmd>exec '!python3' shellescape(@%, 1)<cr>", "Run" },
        --m = { "<cmd>TermExec cmd='nodemon -e py %'<cr>", "Monitor" },
      --}
    --elseif ft == "lua" then
      --keymap_c = {
        --name = "Code",
        --r = { "<cmd>luafile %<cr>", "Run" },
      --}
    --elseif ft == "rust" then
      --keymap_c = {
        --name = "Code",
        --r = { "<cmd>execute 'Cargo run' | startinsert<cr>", "Run" },
        --D = { "<cmd>RustDebuggables<cr>", "Debuggables" },
        --h = { "<cmd>RustHoverActions<cr>", "Hover Actions" },
        --R = { "<cmd>RustRunnables<cr>", "Runnables" },
      --}
    --elseif ft == "go" then
      --keymap_c = {
        --name = "Code",
        --r = { "<cmd>GoRun<cr>", "Run" },
      --}
    --elseif ft == "typescript" or ft == "typescriptreact" or ft == "javascript" or ft == "javascriptreact" then
      --keymap_c = {
        --name = "Code",
        --o = { "<cmd>TypescriptOrganizeImports<cr>", "Organize Imports" },
        --r = { "<cmd>TypescriptRenameFile<cr>", "Rename File" },
        --i = { "<cmd>TypescriptAddMissingImports<cr>", "Import Missing" },
        --F = { "<cmd>TypescriptFixAll<cr>", "Fix All" },
        --u = { "<cmd>TypescriptRemoveUnused<cr>", "Remove Unused" },
        --R = { "<cmd>lua require('config.test').javascript_runner()<cr>", "Choose Test Runner" },
        --s = { "<cmd>2TermExec cmd='yarn start'<cr>", "Yarn Start" },
        --t = { "<cmd>2TermExec cmd='yarn test'<cr>", "Yarn Test" },
      --}
    --elseif ft == "java" then
      --keymap_c = {
        --name = "Code",
        --o = { "<cmd>lua require'jdtls'.organize_imports()<cr>", "Organize Imports" },
        --v = { "<cmd>lua require('jdtls').extract_variable()<cr>", "Extract Variable" },
        --c = { "<cmd>lua require('jdtls').extract_constant()<cr>", "Extract Constant" },
        --t = { "<cmd>lua require('jdtls').test_class()<cr>", "Test Class" },
        --n = { "<cmd>lua require('jdtls').test_nearest_method()<cr>", "Test Nearest Method" },
      --}
      --keymap_c_v = {
        --name = "Code",
        --v = { "<cmd>lua require('jdtls').extract_variable(true)<cr>", "Extract Variable" },
        --c = { "<cmd>lua require('jdtls').extract_constant(true)<cr>", "Extract Constant" },
        --m = { "<cmd>lua require('jdtls').extract_method(true)<cr>", "Extract Method" },
      --}
    --end

    --if fname == "package.json" then
      --keymap_c.v = { "<cmd>lua require('package-info').show()<cr>", "Show Version" }
      --keymap_c.c = { "<cmd>lua require('package-info').change_version()<cr>", "Change Version" }
      --keymap_c.s = { "<cmd>2TermExec cmd='yarn start'<cr>", "Yarn Start" }
      --keymap_c.t = { "<cmd>2TermExec cmd='yarn test'<cr>", "Yarn Test" }
    --end

    --if fname == "Cargo.toml" then
      --keymap_c.u = { "<cmd>lua require('crates').upgrade_all_crates()<cr>", "Upgrade All Crates" }
    --end

    --if next(keymap_c) ~= nil then
      --whichkey.register(
        --{ c = keymap_c },
        --{ mode = "n", silent = true, noremap = true, buffer = bufnr, prefix = "<leader>", nowait = true }
      --)
    --end

    --if next(keymap_c_v) ~= nil then
      --whichkey.register(
        --{ c = keymap_c_v },
        --{ mode = "v", silent = true, noremap = true, buffer = bufnr, prefix = "<leader>", nowait = true }
      --)
    --end
  --end
--end

--function M.setup()
  --normal_keymap()
  --visual_keymap()
  --code_keymap()
--end

--return M

