set fish_greeting

alias ls='ls -l --group-directories-first --almost-all --human-readable --color'
alias free='free -m'

abbr --add pacu 'sudo pacman -Syu'
abbr --add paci 'sudo pacman -S'
abbr --add pacr 'sudo pacman -Rsn'
abbr --add pacq 'sudo pacman -Q'

abbr --add tar 'tar -avcf'
abbr --add untar 'tar -avxf'

abbr --add mount 'udisksctl mount -b'
abbr --add umount 'udisksctl unmount -b'
abbr --add loop 'udisksctl loop-setup -f'
abbr --add unloop 'udisksctl loop-delete -b'