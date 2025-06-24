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
require("nvim-treesitter.parsers").get_parser_configs().nextflow = {
	install_info = {
		url = ".",
		files = { "src/parser.c" },
		branch = "main",
	},
	filetype = "nextflow",
}
