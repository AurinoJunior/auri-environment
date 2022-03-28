#!make
MAKEFLAGS += --silent

help:
	echo "\n"
	echo "Commands:\n"
	echo "make remove_files: remove todos arquivos de configuração"
	echo "\n"

prepare:
	cd ~/ && mkdir Battlefield && cd Battlefield && mkdir Projects

remove_files:
	rm -rf /home/${USER}/.config/terminator/config && rm -rf /home/${USER}/.config/nvim && rm -rf /home/${USER}/.config/Code/User/settings.json

config_nvim:
	ln -s /home/${USER}/Battlefield/auri-enviroment/nvim /home/${USER}/.config/

config_vscode:
	ln -s /home/${USER}/Battlefield/auri-enviroment/vscode/snippets/ /home/${USER}/.config/Code/User/ && ln -s /home/${USER}/Battlefield/auri-enviroment/vscode/settings.json/ /home/${USER}/.config/Code/User/

install_oh-my-zsh:
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

.PHONY: remove_files
