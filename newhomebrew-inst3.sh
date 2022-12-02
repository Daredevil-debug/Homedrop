#! /bin/bash
command -v brew 2> /dev/null
if [ $? -eq 0 ]
then echo "Brew is installed"
else
export NONINTERACTIVE=1; /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.bash_profile && source ~/.bash_profile
