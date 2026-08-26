-- Extra env variables.
-- hl.env("MY_GLOBAL_ENV", "setting")

-- Promote ~/.local/bin (and mise shims) ahead of Omarchy's bin so user shadows
-- of omarchy commands (e.g. omarchy-launch-screensaver) win in graphical-session
-- contexts (menu/launcher spawns), matching interactive shell PATH order.
-- Loaded after default.hypr.envs, so this replaces the PATH the defaults set.
local paths = require("default.hypr.paths")

local promoted = {
  paths.home .. "/.local/bin",
  paths.home .. "/.local/share/mise/shims",
}
local omarchy_bin = paths.omarchy_path .. "/bin"

local skip = { [omarchy_bin] = true }
for _, dir in ipairs(promoted) do
  skip[dir] = true
end

local rest = {}
for entry in (os.getenv("PATH") or "/usr/local/bin:/usr/bin"):gmatch("[^:]+") do
  if not skip[entry] then
    table.insert(rest, entry)
  end
end

hl.env("PATH", table.concat(promoted, ":") .. ":" .. omarchy_bin .. ":" .. table.concat(rest, ":"))
