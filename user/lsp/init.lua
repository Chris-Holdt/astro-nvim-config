local util = require 'lspconfig/util'

return {
    lsp = {
        servers = {
            "gdscript"
        },
        config = {
            gdscript = function()
                return {
                    force_setup = true,
                    single_file_support = false,
                    cmd = {
                        "ncat", "127.0.0.1", "6008"
                    },
                    root_dir = util.root_pattern("project.godot", ".git"),
                    filetypes = { "gd", "gdscript", "gdscript3" }
                }
            end,
        },
    },
}
