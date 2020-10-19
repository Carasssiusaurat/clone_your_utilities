# clone_your_utilities
---
This script clone the repository given as 1st argument with the name given as 2nd argument, if there is only 1 argument keep the repository's original name.
when repository is cloned copy content of file 'stock_my_utilisties' in the new repository.

## adding this script to your path
---
Copy this repository to your home folder then use those commands
```bash
cd ~
emacs .bashrc
```
Your .bashrc file should look like this, just add the last line to yours
```bash
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Add the path of this repository to your PATH variable
export PATH=$PATH:~/clone_your_utilities
```

Ce script permet de cloner un repo tout en lui donnant un autre nom que celui de github. Il permet aussi de copier coller le contenu voulu d'un  autre dossier comme un makefile ou une lib, pour cela il faudra préalablement avoir crée un dossier stock_my_utilities conntenant les fichiers voulus. 