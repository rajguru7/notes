#Adds work and learn dir from home dir to docs as symlinks
cd ~
stow . -t ./notes/docs --ignore "^(?!(work$|learn$|personal$)).*"
