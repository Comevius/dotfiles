set fish_greeting

function fish_user_key_bindings
  bind --erase --all
  bind "" self-insert
  bind \r execute
  bind \n execute
  bind \t complete
  bind \ct complete
  bind -k btab complete-and-search
  bind \e cancel
  bind \e\n "commandline -i \n"
  bind \e\r "commandline -i \n"
  bind -k backspace backward-delete-char
  bind -k dc delete-char
  bind -k down down-or-search
  bind -k up up-or-search
  bind -k left backward-char
  bind -k right forward-char
  bind -k ppage beginning-of-history
  bind -k npage end-of-history
  bind \cn down-or-search
  bind \ce up-or-search
  bind \en history-token-search-forward
  bind \ee history-token-search-backward
  bind \co backward-char
  bind \ci forward-char
  bind \eo prevd-or-backward-word
  bind \ei nextd-or-forward-word
  bind \ch beginning-of-line
  bind \ct end-of-line
  bind \eh beginning-of-buffer
  bind \et end-of-buffer
  bind \ck kill-whole-line
  bind \cd backward-kill-path-component
  bind \ed backward-kill-line
  bind \cy yank
  bind \ey yank-pop
  bind \cm execute
  bind \cv edit_command_buffer
  bind \cp __fish_paginate
  bind \cg __fish_cancel_commandline
  bind \cl __fish_list_current_token
  bind \; __fish_toggle_comment_commandline
  bind -m paste \e\[200~ __fish_start_bracketed_paste
  bind -M paste "" self-insert
  bind -M paste \r "commandline -i \n"
  bind -M paste \e\[201~ '__fish_stop_bracketed_paste'
  bind -M paste \' "__fish_commandline_insert_escaped \' \$__fish_paste_quoted"
  bind -M paste \\ "__fish_commandline_insert_escaped \\\ \$__fish_paste_quoted"
end

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