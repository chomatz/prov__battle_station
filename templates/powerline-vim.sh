out_file=~/.vimrc
plugin=(
"https://github.com/Yggdroot/indentLine.git"
"https://github.com/tpope/vim-fugitive.git"
)
if [ ! -f "$out_file" ]; then
	for repo in ${plugin[*]}; do
		vendor=$(echo "$repo" | cut -d "/" -f 4)
		project=$(echo "$repo" | cut -d "/" -f 5 | cut -d "." -f 1)
		download=~/.vim/pack/$vendor/start/$project
		if [ ! -d "$download" -a ! -f "$download" ]; then
			git clone "$repo" "$download"
		elif [ -d "$download" ]; then
			cd "$download"
			git pull
		fi
		vim -u NONE -c "helptags  $download/doc" -c "q"
	done
	cat /dev/null > "$out_file"
	echo "set laststatus=2" >> "$out_file"
	echo "set showtabline=2" >> "$out_file"
	echo "set noshowmode" >> "$out_file"
	echo "set t_Co=256" >> "$out_file"
	echo "set mouse-=a" >> "$out_file"
	echo "set tabstop=4" >> "$out_file"
	echo "set softtabstop=0 noexpandtab" >> "$out_file"
	echo "set shiftwidth=4" >> "$out_file"
	echo "set foldmethod=indent" >> "$out_file"
	echo "set foldlevelstart=9999" >> "$out_file"
	echo "nnoremap <space> za" >> "$out_file"
	echo ":set list lcs=tab:\|\ " >> "$out_file"
	echo "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab" >> "$out_file"
	echo "let g:indentLine_char = '|'" >> "$out_file"
	echo "nnoremap <tab> :IndentLinesToggle <bar> :set number! <bar> :set list!<CR>" >> "$out_file"
	echo "set number" >> "$out_file"
fi
alias vi='vim'
