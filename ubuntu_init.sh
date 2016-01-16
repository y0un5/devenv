#/bin/sh
#
# Initialize development environment for Amazon Machine Image Ubuntu Server 14.04 LTS

# packages
sudo apt-get install git
sudo apt-get install openjdk-7-jdk # TODO: mave만 설치하면 되나?
sudo apt-get install maven

# vim & tmux
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp conf/tmux.conf ~/.tmux.conf
cp conf/vimrc ~/.vimrc
echo "" > ~/.profile
echo "export TERM=xterm-256color" > ~/.profile

# git global configrations
git config --global core.editor            vim
git config --global core.pager             less
git config --global color.ui               true
git config --global color.status.added     yellow
git config --global color.status.changed   green
git config --global color.status.untracked cyan
git config --global color.branch.remote    yellow
