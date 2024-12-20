__picolove_version = "0.2.0"

scale = 4
xpadding = 8.5
ypadding = 3.5
__pico_resolution = { 128, 128 }

local function startsWidth(line, prefix)
	return string.sub(line, 1, #prefix) == prefix
end

function love.conf(t)
	t.console = true

	t.identity = "picolove"

	__picolove_love_version = t.version

	if
		not startsWidth(t.version, "0.9.")
		and not startsWidth(t.version, "0.10.")
		and not startsWidth(t.version, "11.")
	then
		-- show default version if no match
		t.version = "11.5"
	end

	t.window.title = "PICOLÖVE"
	t.window.icon = "icon.png"
	t.window.width = __pico_resolution[1] * scale + xpadding * scale * 2
	t.window.height = __pico_resolution[2] * scale + ypadding * scale * 2
	t.window.resizable = true
end
