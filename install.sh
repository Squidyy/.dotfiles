#! /bin/bash

# Install Homebrew if not already installed
if command -v brew 2>$1 > /dev/null
then
    echo "### Installing HomeBrew ###"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install homebrew packages if not already installed
echo ""
echo "### Brew packages ###"

# Add any needed packages here
brewPackages="
zsh
neovim
ripgrep
"

brewInstalled=`brew leaves`

# get the asymmetrical diffrence in the arrays.  aka i want everything in 1 thats not in 2
brewExtra=(`echo ${brewPackages} ${brewPackages} ${brewInstalled} | tr ' ' '\n' | sort | uniq -u`)

brewNeeded=(`echo ${brewInstalled} ${brewInstalled} ${brewPackages} | tr ' ' '\n' | sort | uniq -u`)

echo ""
echo "### Extra Local Packages ###"
for line in "${brewExtra[@]}"; do
  echo "$line"
done

echo ""
echo "### Installing 'missing' local packages ###"
for line in "${brewNeeded[@]}"; do
  `brew install $line`
done


# Install o_my_zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# set up sym links so our .dotfiles can be in this repo but accessed by the system as needed
echo ""
echo "### Create links in home dir ###"
# Run this from the directory of the git repo
ln -s `pwd`/nvim ~/.config/nvim
ln -s `pwd`/shell/.bashrc ~/.bashrc
ln -s `pwd`/shell/.zshrc ~/.zshrc
#ln -s `pwd`/gitconfig ~/.gitcofig
