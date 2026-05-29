# Organized Neovim config

Generated from the uploaded `init.lua`.

## Install

Backup your current config first:

```sh
mv ~/.config/nvim ~/.config/nvim.backup.$(date +%Y%m%d-%H%M%S)
```

Then copy this folder into place:

```sh
cp -R /path/to/nvim-organized ~/.config/nvim
```

## Structure

- `init.lua` - small entrypoint
- `lua/config/options.lua` - editor options and leader key
- `lua/config/keymaps.lua` - general keymaps
- `lua/config/autocmds.lua` - autocmds and filetype rules
- `lua/config/lazy.lua` - lazy.nvim bootstrap
- `lua/plugins/*.lua` - one focused plugin group per file

## Notes

- `/etc/hosts` is treated as `conf` because there is no Tree-sitter parser for hosts files.
- `<leader>gc` toggles comments using Comment.nvim.
- Harpoon was corrected to Harpoon v1 API (`require("harpoon").setup({})`, `harpoon.mark`, `harpoon.ui`). Your old `harpoon:setup()` form caused a JSON save error on exit with the installed Harpoon version.
