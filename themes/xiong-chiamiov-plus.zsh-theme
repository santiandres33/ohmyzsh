#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}^%{$fg[green]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ?"
#ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%} "
#ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
        if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

PROMPT=$'%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%})%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;34m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[1;34m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B└─%B[%{\e[1;30m%}$%{\e[0;34m%}%B] <$(git_prompt_info)>%{\e[0m%}%b '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
RPROMPT='%{$fg_bold[green]%}[%D{%d%m %H:%M}]%{$reset_color%}'
