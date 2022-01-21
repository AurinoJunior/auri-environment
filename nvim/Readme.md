## Configurando nvim

### Pré requisitos
Precisamos intalar algumas coisas para alguns pluggins, instale:
- nodejs
- python3 (ja vem em algumas distro no linux).
- vim ou neovim (Estou usando o vim `v0.6.1`).
  - Eu baixei o binario e adicionei no path `/usr/bin/nvim` com permissão u+x.
- Nerd fonts (Estou utilizando a `hack`).
  - ripgrep (para o telescope plugin) `sudo apt install ripgrep`

### Instalaçao
- Configure a nerd font no seu terminal.
- Clone este repo em uma pasta `~/.config`.
- Baixe e instale o [Vim plug](https://github.com/junegunn/vim-plug) gerenciador de plugins do vim.
- Abra o vim e digite `:PlugInstall` para instalar os plugins.
- Renicie o vim com `:!q`.
- Se tudo estiver certo o vim ja vai estar configurado.


### informações adicionais
- Os plugins são instaldos diretamente na pasta `/home/aurino/.local/share/nvim`.
- Os plugins do `coc.nvim` são instalado na node_modules global do usuario ` /home/aurino/.config/coc/extensions`

### Referencias
- [Configurando NEOVIM do zero](https://www.youtube.com/watch?v=lm7y2hI6zME)
