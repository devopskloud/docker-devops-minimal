alias cls='clear'

#edit common files
alias vimrc='vim ~/.vimrc'
alias vimalias='vim ~/.bash_aliases'

#terraform aliases
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfpf="terraform plan | grep 'created\|updated\|destroyed\|replaced'"
alias tfver='terraform -v'
alias tft='terraform fmt'
alias tfv='terraform validate'
alias rmt='rm -rf .terraform'
alias rmts='rm zz.tfstate'
alias tfsl='terraform state list'
alias tfsp='terraform state pull > zz.tfstate'
alias tfdl='~/tfebinaries/download_tfe.sh '

#git aliases
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gpd='git push --delete origin'
alias grh='git reset --hard'
alias gpl='git pull'
alias gf='git fetch -p'
alias gba='git branch -a'
alias gbd='git branch -D'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcl='git clone'
alias gdt='git difftool'
alias gcm='git commit -m'
alias gl='git log --oneline --graph --dirstat'

#docker aliases
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dims='docker images'
alias dnls='docker network ls'
alias dcup='docker compose up'
alias dcdown='docker compose down'
alias d='docker '

#load terraform version aliases
if [ -f ~/.tfe_versions ]; then
	. ~/.tfe_versions
fi

