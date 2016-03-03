BASIC_CONFIG_DIR="$HOME/.basic_config"

for f ($BASIC_CONFIG_DIR/zsh/*); do
	source $f
done

compinit -D

screen -r irc
