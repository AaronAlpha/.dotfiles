export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/bin/git:$PATH" # both statements (above and below) pre-pend the paths "/opt..." to the start of the $PATH path var (where the ":" separates paths in the path var)
eval "$(zoxide init zsh)"
eval "$(/Users/success4aaron/.local/bin/mise activate zsh)"



# setting the directory want to store ZINIT and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# all from Dreams of Autonomy - "This Zsh config is perhaps my favorite one yet"
# zinit-zsh plug-ins
zinit light zsh-users/zsh-syntax-highlighting # syntax highlighting
zinit light zsh-users/zsh-completions # autocomplete


# for zsh-autocomplete, need extra line
autoload -U compinit && compinit # telling zsh to auto load completions whenever it starts

# completion style - enables non-case-sensitive matching for completion 
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # used in tandem with the alias for ls='ls --color'; to specify colors for files and dir


# fzf shell integration - to activate --> crtl+R
eval "$(fzf --zsh)"

# end


source $HOMEBREW_PREFIX/share/zsh-you-should-use/you-should-use.plugin.zsh # activating 'zsh-you-should-use'


if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.dotfiles/.configs/.config/ohmyposh/wholespace.json)"
fi


# alias-es
alias cl='clear'

# for regular "ls"
# alias ls='ls --color' # provides color to the files and directories (diff colors)
# alias lsl='ls -l'
# alias lsa='ls -a'
# alias lal='ls -l -a'

# for use of "new" ls = ez
alias ls='eza --icons --git --color --tree -L=1'
alias lsa='eza --icons --git --color --tree -L=1 -a' # showing hidden files/folders
alias lsl='eza --icons --git --color --tree -L=1 -l'
alias lal='eza --icons --git --color --tree -L=1 -l -a'
alias lst='eza --icons --tree' # for full Tree effect (dangerous - recurses crazy)

# for use of "new" cd = z
# alias cd='z'


alias bat='bat --color=always' # always shows color; -A = printing non-printable chars (like tabs) --> colors don't work properly tho with -A

# for use of "new" cat = bat
# alias cat='bat'

# 
alias nz='nvim .zshrc' # editting .zshrc
alias sz='source .zshrc' # source-ing .zshrc
alias nzp='nvim .zprofile' # editting the .zprofile file (env vars)

alias omp='oh-my-posh'

alias ch='cat myHelp.md'

alias tree='tree -C' # note - tree -a -d --> prints out hidden files (-a) and directories-only (-d)



# 10 Zsh hacks I wish I knew about sooner - Dreams of Code (yt vid)
# to enter an in-line buffer to edit a command with a mistake
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line


# code for when "source .zshrc"; or starting a new ghostty session
fastfetch # to call the fastfetch command
ls
# it will fastfetch, and then list the current (home) dir



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





