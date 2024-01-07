out_file=~/.tmux.conf
if [ ! -f "$out_file" ]; then
	cat /dev/null > "$out_file"
	echo "if-shell 'env \"$POWERLINE_CONFIG_COMMAND\" tmux setup' '' 'run-shell \"powerline-config tmux setup\"'" >> "$out_file"
	echo "bind-key	-T copy-mode-vi	C-space	send-keys -X begin-selection" >> "$out_file"
	echo "bind-key	-T copy-mode-vi	M-w	send-keys -X copy-pipe-and-cancel 'xclip -se c -i'" >> "$out_file"
	echo "bind-key	-T copy-mode-vi	Home	send-keys -X start-of-line" >> "$out_file"
	echo "bind-key	-T copy-mode-vi	End	send-keys -X end-of-line" >> "$out_file"
	echo "bind-key	-T copy-mode-vi	NPage	send-keys -X page-down" >> "$out_file"
	echo "bind-key	-T copy-mode-vi	PPage	send-keys -X page-up" >> "$out_file"
fi
