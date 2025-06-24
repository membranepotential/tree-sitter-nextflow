-- Add filetype detection
vim.filetype.add({
	extension = {
		nf = "nextflow",
	},
	pattern = {
		[".*%.nf"] = "nextflow",
		["nextflow%.config"] = "nextflow",
	},
})

-- Register treesitter parser
local sep = string.sub(package.config, 1, 1)
local script_path = string.sub(debug.getinfo(1).source, 2)
local plugin_path = script_path:match("(.+)" .. sep .. "plugin" .. sep .. "tree%-sitter%-nextflow%.lua$") or script_path

require("nvim-treesitter.parsers").get_parser_configs().nextflow = {
	install_info = {
		url = plugin_path,
		files = { "src/parser.c" },
		branch = "main",
	},
	filetype = "nextflow",
}
