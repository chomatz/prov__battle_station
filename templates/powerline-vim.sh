# variables for configuration #
vimrc=~/.vimrc
IFS="
"
config_powerline=(
	"set laststatus=2"
	"set showtabline=2"
	"set noshowmode"
	"set t_Co=256"
)
# vimrc baseline configuration #
for configuration in ${config_powerline[*]}; do
    grep -qxF "$configuration" "$vimrc" || echo "$configuration" >> "$vimrc"
done
