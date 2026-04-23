return {
  cmd = {
	"arduino-language-server",
	"-cli-config", vim.fn.expand("~/.arduinoIDE//arduino-cli.yaml"),
	"-fqbn", "arduino:avr:uno",
	"-cli", "arduino-cli",
	"-clangd", "clangd",
  },
  on_attach = function(client, _)
	client.server_capabilities.semanticTokensProvider = nil
  end,
}
