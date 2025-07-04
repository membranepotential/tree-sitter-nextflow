# Contribution guide

## Build and develop

- `tree-sitter-nextflow` follows the usual structure of a tree-sitter project, so
  to get started you should read the [Creating Parsers](https://tree-sitter.github.io/tree-sitter/creating-parsers) section of the tree-sitter docs.
- Make sure to update the tests and neovim queries to support new changes.

## Neovim setup

The nextflow neovim queries are located under [the `queries` directory](https://github.com/murtaza64/tree-sitter-groovy/tree/main/queries).

To use your locally built nextflow parser in neovim, you can add the following snippet to your configuration _before_ calling `require('nvim-treesitter.configs').setup`.

```lua
require("nvim-treesitter.parsers").get_parser_configs().nextflow = {
  install_info = {
    url = "~/path/to/your/fork/of/tree-sitter-nextflow/",
    files = { "src/parser.c" },
  }
}
```
