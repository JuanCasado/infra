#!/bin/sh -xe

su $DEV_USER sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" >/dev/null

ln -fs /home/$DEV_USER/.config/zsh /home/$DEV_USER/.zshrc
ln -fs /home/$DEV_USER/.config/p10k.zsh /home/$DEV_USER/.p10k.zsh

git clone https://github.com/zsh-users/zsh-history-substring-search.git /home/$DEV_USER/.oh-my-zsh/custom/plugins/zsh-history-substring-search
git clone --depth=1 https://github.com/marlonrichert/zsh-autocomplete.git /home/$DEV_USER/.oh-my-zsh/custom/plugins/zsh-autocomplete
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git /home/$DEV_USER/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/$DEV_USER/.oh-my-zsh/custom/themes/powerlevel10k

. /home/$DEV_USER/.zshrc
update-locale
