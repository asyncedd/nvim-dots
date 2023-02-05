local present, mason = pcall(require, "mason")
if not present then return end

local M = {}

M.setup = function(plugin, opts)
	require("mason").setup(opts)
	local mr = require("mason-registry")
	for _, tool in ipairs(opts.ensure_installed) do
		local p = mr.get_package(tool)
		if not p:is_installed() then
			p:install()
		end
	end
end

return M
