local lsp_servers = {
  pyright = {},
  tsserver = {},
    bashls = {},
    cssls = {},
    denols = {},
    dockerls = {},
    docker_compose_language_service = {},
    eslint = {},
    html = {},
    jsonls = {},
    marksman = {},
    solang = {},
    tailwindcss = {},
}

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = lsp_servers,
  automatic_installation = true,
})

vim.g.coq_settings = { auto_start = "shut-up" }
local coq = require("coq")

local server_maps = function(opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- goto def
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- see docs
  vim.keymap.set("n", "<space>f", function() -- format
    vim.lsp.buf.format({ async = true })
  end, opts)
end

for lsp, settings in pairs(lsp_servers) do
  require("lspconfig")[lsp].setup(coq.lsp_ensure_capabilities({
    on_attach = function(_, buffer)
      server_maps({ buffer = buffer })
    end,
    settings = settings,
  }))
end

local null_servers = {
  "isort",
  "black",
  "prettierd",
}

require("mason-null-ls").setup({
  ensure_installed = null_servers,
  automatic_installation = true,
  automatic_setup = true,
})
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ 
                        async = false,
                        bufnr = bufnr, 
                        filter = function(client)
                            return client.name == "null-ls"
                        end
                    })
                end,
            })
        end
      end,
    })


require("coq_3p") {
    { src = "copilot", short_name = "COP", accept_key = "<c-f>" },
}
