#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi
bind 'set show-mode-in-prompt on'
PS1='$(pwd) ' # PS1='[\u@\h \W]\$ '
export EDITOR='vim'

alias vi=vim
alias ls='ls --color=always'
alias dir='dir --color=always'
alias grep='grep --color=always'
alias egrep='egrep --color=always'
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'
alias make='make -j 8'
alias gimp='gimp &> /dev/null'
alias orphans='pacman -Qtdq'
alias pQ='pacman -Q | wc -l'
alias proc='ps -axjf | grep -v -e lemonbar -e sleep -e chromium'

conf() {
	case $1 in
		bspwm)	vim ~/.config/bspwm/bspwmrc ;; # && ~/.config/bspwm/bspwmrc ;;
		sxhkd)	vim ~/.config/sxhkd/sxhkdrc ;;
		pacman)	sudo vim /etc/pacman.conf ;;
		vim)	vim ~/.vimrc ;;
		cvim)   vim ~/.vim/after/ftplugin/c.vim ;;
		xinit)	vim ~/.xinitrc ;;
		xres)	vim ~/.Xresources && xrdb ~/.Xresources ;;
		xorg)	vim /etc/X11xorg.conf.d ;;
		bash)	vim ~/.bashrc && source ~/.bashrc ;;
		bpro)	vim ~/.bash_profile ;;
		comp)	vim ~/.config/.compton.conf ;;
		panels)	cd ~/.config/bspwm/panel ;;
		fstab)	sudo vim /etc/fstab ;;
		neo)    vim ~/.config/neofetch/config.conf ;;
		colors) cd ~/.colors/ ;;
		ncm)	vim ~/.ncmpcpp/config ;;
		mpd)	vim ~/.config/mpd/mpd.conf ;;
		*)	echo "Unknown application: $1" ;;
	esac
}

calc() {
	awk "BEGIN {print $1}"
}

function cd() {
	builtin cd "$@" && ls -lah
}

LS_COLORS=$LS_COLORS:'di=0;34;1:fi=1;31;1:ex=1;35;1:ln=32:or=93:mi=90'; export LS_COLORS

neofetch
