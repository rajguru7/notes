#Removes the symlinks added by add_dir.sh
cd ~
stow -D . -t ./notes/docs --ignore "^(?!(work$|learn$|personal$)).*"

