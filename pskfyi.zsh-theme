# Based on the oh-my-zsh theme 'lambda'.
# - modifies the prompt icon to be an orange Ubuntu symbol
# - adds newlines before each prompt
# - places the prompt icon ("powerline") on its own line
# - slightly modified colors
#
# NOTE: This theme expects that you have a Nerd Font installed.
# See https://www.nerdfonts.com/font-downloads

# Icons from NerdFonts
#   \Ue725 - the git branch icon
#   \Uf31b - the Ubuntu icon

# Color codes
#   202 - an ubuntu-like orange
#   009 - a git-like light red
#   070 - a bright green for success
#   124 - a saturated, semi-dark red for errors
#
# Use command spectrum_ls for more colors

PROMPT=''
PROMPT+=$'\n'                                                 # preceding newline
PROMPT+=$'%{$FG[202]%}\Uf31b%{$reset_color%}'                 # prefix w/ OS icon
PROMPT+=' %~/ $(git_prompt_info)%{$reset_color%}'             # copied from lambda theme
PROMPT+=$'\n'                                                 # newline before prompt icon
PROMPT+="%(?:%{$FG[070]%}➜ :%{$FG[124]%}➜ )%{$reset_color%}"  # move original "powerline" to end
# note the space at the end of the arrow

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[009]%}\Ue725 " # note the space at the end
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
