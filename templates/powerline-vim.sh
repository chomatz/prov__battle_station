out_file=~/.vimrc
if [ ! -f "$out_file" ]; then
	cat /dev/null > "$out_file"
	echo "set laststatus=2" >> "$out_file"
	echo "set showtabline=2" >> "$out_file"
	echo "set noshowmode" >> "$out_file"
	echo "set t_Co=256" >> "$out_file"
	echo "set mouse-=a" >> "$out_file"
	echo "autocmd FileType yaml setlocal foldmethod=indent" >> "$out_file"
	echo "set foldlevelstart=9999" >> "$out_file"
	echo "nnoremap <space> za" >> "$out_file"
	if [ ! -d "~/.vim/pack/Yggdroot/start/indentLine" ]; then
		git clone https://github.com/Yggdroot/indentLine.git ~/.vim/pack/Yggdroot/start/indentLine
	elif [ -d "~/.vim/pack/Yggdroot/start/indentLine" ]; then
		cd ~/.vim/pack/Yggdroot/start/indentLine
		git pull
	fi
	vim -u NONE -c "helptags  ~/.vim/pack/Yggdroot/start/indentLine/doc" -c "q"
	echo "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab" >> "$out_file"
	echo "let g:indentLine_char = '|'" >> "$out_file"
	echo "nnoremap <tab> :IndentLinesToggle <bar> :set number!<CR>" >> "$out_file"
	echo "set number" >> "$out_file"
	if [ ! -d "~/.vim/pack/tpope/start/fugitive" ]; then
		git clone https://tpope.io/vim/fugitive.git ~/.vim/pack/tpope/start/fugitive
	elif [ -d "~/.vim/pack/tpope/start/fugitive" ]; then
		cd ~/.vim/pack/tpope/start/fugitive
		git pull
	fi
	vim -u NONE -c "helptags  ~/.vim/pack/tpope/start/fugitive/doc" -c "q"
fi
alias vi='vim'
