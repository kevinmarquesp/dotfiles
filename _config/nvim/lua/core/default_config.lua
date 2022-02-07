-- IMPORTANT NOTE : This is default config, so dont change anything here.
-- use custom/chadrc.lua instead

local M = {}

M.options = {
    -- custom = {}
    -- general nvim/vim options , check :h optionname to know more about an option

    clipboard = "unnamedplus",
    cmdheight = 1,
    ruler = true,
    hidden = true,
    ignorecase = true,
    smartcase = true,
    mapleader = " ",
    mouse = "a",
    number = true,
    numberwidth = 2,
    relativenumber = false,
    expandtab = true,
    shiftwidth = 4,
    smartindent = true,
    tabstop = 4,
    timeoutlen = 400,
    updatetime = 250,
    undofile = false,
    fillchars = { eob = " " },
    shadafile = vim.opt.shadafile,
    confirm = true,
    nowrap = true,

    -- NvChad options
    nvChad = {
        copy_cut = true, -- copy cut text ( x key ), visual and normal mode
        copy_del = true, -- copy deleted text ( dd key ), visual and normal mode
        insert_nav = true, -- navigation in insertmode
        window_nav = true,

        -- updater
        update_url = "https://github.com/NvChad/NvChad",
        update_branch = "main",
    },
}

---- UI -----

M.ui = {
    hl_override = "", -- path of your file that contains highlights
    italic_comments = true,
    theme = "nord", -- default theme

    -- Change terminal bg to nvim theme's bg color so it'll match well
    -- For Ex : if you have onedark set in nvchad, set onedark's bg color on your terminal
    transparency = true,
}

---- PLUGIN OPTIONS ----

M.plugins = {
    -- enable/disable plugins (false for disable)
    status = {
        blankline = true, -- indentline stuff
        bufferline = true, -- manage and preview opened buffers
        colorizer = true, -- color RGB, HEX, CSS, NAME color codes
        comment = true, -- easily (un)comment code, language aware
        dashboard = true,
        feline = true, -- statusline
        gitsigns = true,
        lspsignature = true, -- lsp enhancements
        vim_matchup = true, -- improved matchit
        cmp = true,
        snippets = true,
        nvimtree = true,
        autopairs = true
    },
    options = {
        packer = {
            init_file = "plugins.packerInit",
        },
        autopairs = { loadAfter = "nvim-cmp" },
        cmp = {
            lazy_load = true,
        },
        lspconfig = {
            setup_lspconf = "", -- path of file containing setups of different lsps
        },
        nvimtree = {
            -- packerCompile required after changing lazy_load
            lazy_load = true,
        },
        luasnip = {
            snippet_path = {},
        },
        statusline = {
            -- hide, show on specific filetypes
            hidden = {
                "help",
                "dashboard",
                "NvimTree",
                "terminal",
            },
            shown = {},

            -- truncate statusline on small screens
            shortline = true,
            style = "round", -- default, round , slant , block , arrow
        },
        esc_insertmode_timeout = 300,
    },
    default_plugin_config_replace = {},
    default_plugin_remove = {},
    install = nil,
}

--- MAPPINGS ----

-- non plugin
M.mappings = {
    -- custom = {}, -- custom user mappings

    misc = {
        cheatsheet = "<leader>H",
        close_buffer = "<leader><Down>",
        copy_whole_file = "<C-f>", -- copy all contents of current buffer
        copy_to_system_clipboard = "", -- copy selected text (visual mode) or curent line (normal)
        line_number_toggle = "<leader><C-n>n", -- toggle line number
        relative_line_number_toggle = "<leader><C-n>r",
        update_nvchad = "",
        new_buffer = "",
        new_tab = "<leader>t",
        save_file = "<C-s>", -- save file using :w
    },

    -- navigation in insert mode, only if enabled in options

    insert_nav = {
        backward = "",
        end_of_line = "",
        forward = "",
        next_line = "<C-k>",
        prev_line = "<C-j>",
        beginning_of_line = "",
    },

    -- better window movement
    window_nav = {
        moveLeft = "<leader>h",
        moveRight = "<leader>l",
        moveUp = "<leader>k",
        moveDown = "<leader>j",
    },

    -- terminal related mappings
    terminal = {
        -- multiple mappings can be given for esc_termmode, esc_hide_termmode

        -- get out of terminal mode
        esc_termmode = { ",," },

        -- get out of terminal mode and hide it
        esc_hide_termmode = { "<C-h>" },
        -- show & recover hidden terminal buffers in a telescope picker
        pick_term = "<leader>W",

        -- spawn terminals
        new_horizontal = "<leader>Ti",
        new_vertical = "<leader>Ts",
        new_window = "<leader>Tt",
    },
}


-- plugins related mappings
-- To disable a mapping, equate the variable to "" or false or nil in chadrc

M.mappings.plugins = {
    bufferline = {
        next_buffer = "<Tab>",
        prev_buffer = "<S-Tab>",
    },
    comment = {
        toggle = "<CR>",
    },

    dashboard = {
        bookmarks = "",
        new_file = "", -- basically create a new buffer
        open = "<leader>DB", -- open dashboard
        session_load = "",
        session_save = "",
    },

    -- map to <ESC> with no lag
    better_escape = { -- <ESC> will still work
        esc_insertmode = { "<C-l>" }, -- multiple mappings allowed
    },

    lspconfig = {
        declaration = "gD",
        definition = "gd",
        hover = "K",
        implementation = "gi",
        signature_help = "gk",
        add_workspace_folder = "<leader>wa",
        remove_workspace_folder = "<leader>wr",
        list_workspace_folders = "<leader>wl",
        type_definition = "<leader>D",
        rename = "<leader>ra",
        code_action = "<leader>ca",
        references = "gr",
        float_diagnostics = "ge",
        goto_prev = "[d",
        goto_next = "]d",
        set_loclist = "<leader>q",
        formatting = "<leader>fm",
    },

    nvimtree = {
        toggle = "<leader>n",
        focus = "",
    },

    telescope = {
        buffers = "<leader>Pb",
        find_files = "<leader>PP",
        find_hiddenfiles = "<leader>Pp",
        git_commits = "<leader>Pg",
        git_status = "<leader>Pgs",
        help_tags = "<leader>Ph",
        live_grep = "<leader>Pg",
        oldfiles = "<leader>Po",
        themes = "<leader>Pt", -- NvChad theme picker
    },
}

return M
