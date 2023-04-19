-- filetye mappings

-- add Tiltfile (starlark) support
vim.filetype.add(
    {
        filename = {
            ["Tiltfile"] = 'starlark',
            ["tiltfile"] = 'starlark'
        }
    }
)
