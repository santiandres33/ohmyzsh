# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=521888#p521888
function prompt_char {
        if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

PROMPT=$'%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%})

%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;34m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[1;34m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B└─%B[%{\e[1;30m%}$%{\e[0;34m%}%B] <$(git_prompt_info)>%{\e[0m%}%b '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
RPROMPT='%{$fg_bold[green]%}[%D{%d%m %H:%M}]%{$reset_color%}'
