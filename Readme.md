## Configuração de ambiente

### Pré requisitos
Primeiro devemos instalar algumas coisas:
- nodejs (Preferencialmente nvm)
- python3 (Boa parte das distros mais comuns ja vem com esse pacote)
- neovim (Estou usando o vim `v0.6.1`).
  - Eu baixei o binario e adicionei no path `/usr/bin/nvim` com permissão u+x.
- Nerd fonts (Estou utilizando a `hack`).
  - ripgrep (para o telescope plugin) `sudo apt install ripgrep`
- visual studio code.

### Instalação
- Clone este repositorio.
- Crie links simbolicos para o vscode e para a pasta nvim dentro de:
  - `/home/${USER}/.config/nvim` 
  - `/home/${USER}/.config/Code/User/settings.json`
  - `/home/${USER}/.config/Code/User/snippets`

```bash
#exemplo de link simbolico

ln -sf /home/${USER}/auri-environment/vscode/snippets /home/${USER}/.config/Code/User/snippets
`
```

### Configuração vim
- Configure a nerd font no seu terminal.
- Baixe e instale o [Vim plug](https://github.com/junegunn/vim-plug) gerenciador de plugins do vim.
- Abra o vim e digite `:PlugInstall` para instalar os plugins.
- Renicie o vim com `:!q`.
- Se tudo estiver certo o vim ja vai estar configurado.
- Informações adicionais no [Readme.md](https://github.com/AurinoJunior/auri-enviroment/tree/master/nvim) da pasta nvim.

### Configuração vscode
- Instale os pacotes na aba extensions `auri-theme` e `auri-bundle`
- Já esta pronto para uso.




