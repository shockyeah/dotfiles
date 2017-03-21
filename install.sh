#!/bin/sh

# スクリプトのカレントディレクトリを変数へ保持
DOTSFILE_DIR=$(cd $(dirname $0); pwd)

# 
setup_dein() {
    local rcdir=$HOME/.vim/rc
    if [ ! -d $rcdir ]
    then
        mkdir -p $rcdir
    fi
}

# 
delete_old_files() {
    rm -f $HOME/.vim/rc/dein.toml
    rm -f $HOME/.vim/rc/dein_lazy.toml
    rm -f $HOME/.vimrc
    rm -f $HOME/.bashrc
    rm -f $HOME/.gitignore
}

# 
create_symlinks() {
    local rcdir=$HOME/.vim/rc
    ln -s $DOTSFILE_DIR/dein.toml $rcdir/dein.toml
    ln -s $DOTSFILE_DIR/dein_lazy.toml $rcdir/dein_lazy.toml
    ln -s $DOTSFILE_DIR/vimrc $HOME/.vimrc
    ln -s $DOTSFILE_DIR/bashrc $HOME/.bashrc
    ln -s $DOTSFILE_DIR/gitignore $HOME/.gitignore
}

# -----
# main
# -----
# set up dein vim
if is_available_command "vim"
then
    setup_dein
else
    echo "Vim is not installed. Settings for Vim was skipped."
fi

delete_old_files
create_symlinks

echo "[DONE]"
