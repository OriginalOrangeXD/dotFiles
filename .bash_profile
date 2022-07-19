#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


#Powerline
export PATH="$PATH:/home/robby/.local/bin/"
export LC_ALL=en_CA.utf8
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /home/robby/.local/lib/python3.10/site-packages/powerline/bindings/bash/powerline.sh
