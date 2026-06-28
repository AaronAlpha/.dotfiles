export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/bin/git:$PATH" # both statements (above and below) pre-pend the paths "/opt..." to the start of the $PATH path var (where the ":" separates paths in the path var)
eval "$(zoxide init zsh)"
eval "$(/Users/success4aaron/.local/bin/mise activate zsh)"


if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.dotfiles/.configs/.config/ohmyposh/wholespace.json)"
fi

fastfetch # to call the fastfetch command

# alias-es
alias cl='clear'
alias lsl='ls -l'
alias lsa='ls -a'
alias lal='ls -l -a'

alias nz='nvim .zshrc' # editting .zshrc
alias sz='source .zshrc' # source-ing .zshrc
alias nzp='nvim .zprofile' # editting the .zprofile file (env vars)

alias omp='oh-my-posh'

alias ch='cat myHelp.md'


# 10 Zsh hacks I wish I knew about sooner - Dreams of Code (yt vid)
# to enter an in-line buffer to edit a command with a mistake
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line


# chpwd (what happens whan you "change into a new directory"
chpwd() {
	# create an if-stmt that checks if the number of hidden and non-hidden files/folders are greater than some number; if they are DONT do lal
	# otherwise if it is lesser, do lal
	# would need to get the number of items in a directory - yt vid or somthing
	
	# lal
	
	# num='ls -al | wc -l'

	# if [ $num -gt 10 ]; then 
	#		echo "works"
	# else
	#		echo "no works"
	# fi 
	

	echo "Type 'ch' for summary of brew packages and installed CLI commands."

	# $(git -C . rev-parse 2>/dev/null)
	# if [ echo $? -eq 0 ]; then
		#echo "works"
#	fi 
	
	ls
	

}


# setting the directory want to store ZINIT and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"





