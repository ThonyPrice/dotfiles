-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

-- Optimized for retina-class 2x displays, like 13" 2.8K, 27" 5K, 32" 6K.
hl.env("GDK_SCALE", "2")

-- By default, mirror the built-in display on any external monitor.
-- Depends on the built-in display registering as eDP-1, check: hyprctl monitors all
-- Mirrors must share the built-in panel's 1920x1080 (16:9): at any other size,
-- e.g. a 1920x1200 or 2560x1600 preferred mode, Hyprland letterboxes the mirror
-- and never clears the bands, which show stale flickering frames. A monitor
-- without a 1080p mode falls back to its preferred one.
hl.monitor({ output = "", mode = "1920x1080@60", position = "auto", scale = 1, mirror = "eDP-1" })

-- The laptop's HDMI port often fails its first EDID read on plug-in and the
-- output stays dark; monitor-autolight retries with `hyprctl reload`.
hl.on("monitor.added", function()
  hl.exec_cmd(os.getenv("HOME") .. "/.local/bin/monitor-autolight")
end)
