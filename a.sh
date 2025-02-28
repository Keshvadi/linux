sudo apt update  # Or your system's equivalent package update command
sudo apt install -y git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libgdbm-dev libncurses5-dev libffi-dev libgmp-dev # Dependencies

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc # Or ~/.zshrc if you use zsh
echo 'eval "$(rbenv init -)"' >> ~/.bashrc           # Or ~/.zshrc
source ~/.bashrc                                      # Or ~/.zshrc
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
