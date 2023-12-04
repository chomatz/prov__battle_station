if [ ! -f ~/.vimrc ]; then
	out_file=~/.vimrc
	cat /dev/null > "$out_file"
	echo "set laststatus=2" >> "$out_file"
	echo "set showtabline=2" >> "$out_file"
	echo "set noshowmode" >> "$out_file"
	echo "set t_Co=256" >> "$out_file"
	echo "set mouse-=a" >> "$out_file"
fi
