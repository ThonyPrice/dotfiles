-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

-- Optimized for retina-class 2x displays, like 13" 2.8K, 27" 5K, 32" 6K.
hl.env("GDK_SCALE", "2")

-- By default, always mirror the built-in display.
-- Depends on the built-in display registering as eDP-1, check: hyprctl monitors all
-- VERIFY after the v4 upgrade that hl.monitor accepts `mirror`; the fallback is
-- omarchy-hyprland-monitor-internal-mirror.
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1, mirror = "eDP-1" })
