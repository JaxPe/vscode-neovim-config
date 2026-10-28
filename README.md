# VS Code + Neovim (NvChad Keybindings)

Arquivos de configuração para usar o **VS Code** com a extensão [`asvetliakov.vscode-neovim`](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim) replicando os atalhos e o fluxo de trabalho do **NvChad**.

## Estrutura de Arquivos

- `nvim/init.lua` — Ponto de entrada do Neovim (`%LOCALAPPDATA%\nvim\init.lua` no Windows ou `~/.config/nvim/init.lua` no Linux/macOS)
- `nvim/lua/vscode-nvchad.lua` — Mapeamentos de teclas em Lua para o `vscode-neovim` (`%LOCALAPPDATA%\nvim\lua\vscode-nvchad.lua` no Windows ou `~/.config/nvim/lua/vscode-nvchad.lua` no Linux/macOS)
- `vscode/keybindings.json` — Atalhos de teclado do VS Code (`%APPDATA%\Code\User\keybindings.json` no Windows)
- `vscode/settings.json` — Configurações do VS Code (`%APPDATA%\Code\User\settings.json` no Windows)
