-- Personal keybindings, loaded after Omarchy's defaults.
-- See current bindings and descriptions: omarchy menu keybindings --print

-- The old personal app layer is now covered by v4 defaults (Tmux attach-or-create
-- on SUPER+ALT+RETURN, browser/files/music/signal/obsidian/webapps); only the
-- deltas from stock remain here.

-- Activity monitor (no longer a default).
o.bind("SUPER + SHIFT + T", "Activity", { tui = "btop" })

-- Typora instead of Omawrite.
hl.unbind("SUPER + SHIFT + W")
o.bind("SUPER + SHIFT + W", "Typora", { launch = "typora --enable-wayland-ime" })

-- Fuzzy file/folder search (stand-in for Walker's "/" prefix); see bin/find-file.
-- MINUS is where "/" sits on a US layout, and an easy right-hand key on Swedish.
o.bind("SUPER + SHIFT + MINUS", "Find file", "find-file")

-- Unbind defaults that conflict with the vim-style layout below.
hl.unbind("SUPER + J")        -- Toggle window split (rebound to SUPER+S)
hl.unbind("SUPER + K")        -- Keybindings menu (rebound to SUPER+CTRL+K)
hl.unbind("SUPER + L")        -- Toggle workspace layout
hl.unbind("SUPER + S")        -- Toggle scratchpad (rebound to SUPER+CTRL+S)
hl.unbind("SUPER + ALT + K")  -- Tmux keybindings menu (SUPER+ALT+K resizes)
hl.unbind("SUPER + CTRL + K") -- Herdr keybindings menu (SUPER+CTRL+K shows main menu)

-- Rebind...
o.bind("SUPER + S", "Toggle window split", hl.dsp.layout("togglesplit"))
o.bind("SUPER + CTRL + K", "Show key bindings", "omarchy-menu-keybindings")
o.bind("SUPER + CTRL + S", "Toggle scratchpad", hl.dsp.workspace.toggle_special("scratchpad"))

-- Vim-style window focus.
o.bind("SUPER + H", "Move window focus left", hl.dsp.focus({ direction = "l" }))
o.bind("SUPER + J", "Move window focus down", hl.dsp.focus({ direction = "d" }))
o.bind("SUPER + K", "Move window focus up", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + L", "Move window focus right", hl.dsp.focus({ direction = "r" }))
o.bind("SUPER + SHIFT + H", "Swap window to the left", hl.dsp.window.swap({ direction = "l" }))
o.bind("SUPER + SHIFT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))
o.bind("SUPER + SHIFT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("SUPER + SHIFT + L", "Swap window to the right", hl.dsp.window.swap({ direction = "r" }))

-- Resize active window.
o.bind("SUPER + ALT + L", "Expand window right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
o.bind("SUPER + ALT + H", "Shrink window left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
o.bind("SUPER + ALT + K", "Shrink window up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))
o.bind("SUPER + ALT + J", "Expand window down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))

-- Mouse bindings.
o.bind("SUPER + mouse:274", "Toggle dictation", "voxtype record toggle") -- MX Anywhere 2S wheel-click
