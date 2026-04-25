local get_hovered_url = ya.sync(function(_)
	local hovered = cx.active.current.hovered
	return hovered and tostring(hovered.url) or nil
end)

local function entry()
	local hovered_url = get_hovered_url()
	if not hovered_url then return end

	local actual_path = hovered_url
	if hovered_url:match("^search://") then
		local path_part = hovered_url:match("^search://[^/]+//(.+)$")
		if not path_part then return end
		actual_path = path_part:match("^/") and path_part or "/" .. path_part
	end

	local parent_dir = actual_path:match("^(.+)/[^/]+$")
	if not parent_dir then return end

	ya.emit("escape", {})
	ya.emit("cd", { Url(parent_dir) })
	ya.emit("reveal", { actual_path })
end

return { entry = entry }
