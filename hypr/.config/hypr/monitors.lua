-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

-- Optimized for retina-class 2x displays, like 13" 2.8K, 27" 5K, 32" 6K.
hl.env("GDK_SCALE", "2")

-- By default, always mirror the built-in display.
-- Depends on the built-in display registering as eDP-1, check: hyprctl monitors all
-- VERIFY after the v4 upgrade that hl.monitor accepts `mirror`; the fallback is
-- omarchy-hyprland-monitor-internal-mirror.
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1, mirror = "eDP-1" })

-- Dell P2723DE on the laptop's HDMI port. Mirrors must share the built-in
-- panel's 16:9 aspect: at the fallback 1920x1200 Hyprland letterboxes the
-- mirror and never clears the bands, which show stale flickering frames.
-- 2560x1440 is rejected on this port (i915 misdetects a DP++ adaptor and
-- caps the TMDS clock), so pin the 1080p mode explicitly.
hl.monitor({ output = "desc:Dell Inc. DELL P2723DE CFDH714", mode = "1920x1080@60", position = "auto", scale = 1, mirror = "eDP-1" })
