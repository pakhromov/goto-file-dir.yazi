# goto-file-dir.yazi

A Yazi plugin that navigates to the parent directory of the currently hovered file and reveals it. Most useful when browsing search results (`fd` / `rg`) - Yazi's search shows a flat list of matches, and this plugin lets you jump into the directory of whichever result you're hovering.

## Installation

**Via ya pkg:**
```bash
ya pkg add pakhromov/goto-file-dir
```

**Manual:**
```bash
git clone https://github.com/pakhromov/goto-file-dir.yazi ~/.config/yazi/plugins/goto-file-dir.yazi
```

Add to `~/.config/yazi/keymap.toml`:
```toml
[[mgr.prepend_keymap]]
on = "<C-g>"
run = "plugin goto-file-dir"
desc = "Go to directory of hovered file"
```

## Usage

Hover any file in search results and press the keybind, the plugin exits search mode, navigates to the file's parent directory, and highlights the file.
