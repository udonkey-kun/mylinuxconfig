# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
srvDomain=".srv.dc.ri"
ppk="/home/$USER/Documents/X112/private"


#Alias Mehdi
alias vi='vim'
alias bashrc='vim /home/$USER/.bashrc'
alias bashrc_reload='source ~/.bashrc'
alias upgrade='sudo dnf upgrade'
alias ssh_ppk='ssh -i $ppk'
alias nixus="ssh -i $ppk root@nixus01-000$srvDomain"
alias wekan="ssh -i $ppk root@wekan01-000$srvDomain"
