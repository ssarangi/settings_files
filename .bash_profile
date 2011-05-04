#--------------------------------------------------------#
#  A sample .profile file for Korn shell and Bash users  #
#--------------------------------------------------------#
#  Courtesy of Developer's Daily                         #
#  http://www.DevDaily.com                               # 
#--------------------------------------------------------#
PATH=$PATH:/usr/local/bin:/usr/gnu/bin

set -o vi           # enable the ability to recall previous commands with 
PS1='$PWD> '        # set the prompt to display the current directory
# PS1='\e[0;36m\][\T] \e[0;32m\][\d] \[\e[1;33m\][$PWD\[\[\e[0;37m\]${SSH_TTY}]: '
PS1='\[\e[m\n\e[1;30m\][$$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;33m\]\u@\H[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n($SHLVL:\!)\$ '

#---------------------------------#
#  a few Korn/Bash shell aliases  #
#---------------------------------#

alias lc="ls -C"
alias lm="ls -al | more"
alias dirs="ls -al | grep '^d'"     # show the dir's in the current dir
alias h=history                     # show the history of commands issued
alias ls="ls -l --color=auto"
alias nu="who|wc -l"                # nu - number of users
alias np="ps -ef|wc -l"             # np - number of processes running
alias p="ps -ef"

# mimick a few DOS commands with these aliases:

alias cd..="cd ../.."
alias cd...="cd ../../.."
alias dir="ls -al"
alias edit=vi
alias help=man
alias path="echo $PATH"

