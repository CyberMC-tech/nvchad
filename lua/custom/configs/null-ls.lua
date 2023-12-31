local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- python
  b.diagnostics.pylint,
  b.formatting.black,
  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- bash
  b.formatting.beautysh,
  b.formatting.shfmt,

  --python
  b.formatting.black,

}

null_ls.setup({
  debug = true,
  sources = sources,
})
