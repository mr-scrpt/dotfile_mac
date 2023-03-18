# if status is-interactive
    # Commands to run in interactive sessions can go here
# end

# ~/.config/fish/config.fish

starship init fish | source
zoxide init fish | source
set -gx fish_greeting # disable fish greeting
set -U BAT_THEME Nord # 'sharkdp/bat' cat clone
set -U EDITOR nvim # 'neovim/neovim' text editor


set -U FZF_CTRL_R_OPTS "--border-label=' History ' --prompt=' '"
set -U FZF_DEFAULT_COMMAND "fd -H -E '.git'"

set -U FZF_DEFAULT_OPTS "--reverse --no-info --prompt=' ' --pointer='' --marker=' ' --ansi --color gutter:-1,bg+:-1,header:4,separator:0,info:0,label:4,border:4,prompt:7,pointer:5,query:7,prompt:7"
set -U FZF_TMUX_OPTS "-p --no-info --ansi --color gutter:-1,bg+:-1,header:4,separator:0,info:0,label:4,border:4,prompt:7,pointer:5,query:7,prompt:7"



set -U PAGER ~/.local/bin/nvimpager # 'lucc/nvimpager'
set -U VISUAL nvim



# aliases
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end
alias g git
command -qv nvim && alias v nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH


# ordered by priority - bottom up
fish_add_path /opt/homebrew/bin # https://brew.sh/
fish_add_path /opt/homebrew/sbin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/share/nvim/site/pack
