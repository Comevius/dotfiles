#!/bin/sh

userresources=$XDG_CONFIG_HOME/X11/Xresources

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

setxkbmap -layout us,hu -variant workman, -option grp:sclk_toggle,ctrl:swap_lalt_lctl,ctrl:ralt_rctrl,ctrl:rctrl_ralt,caps:super

export GTK_IM_MODULE='ibus'
export QT_IM_MODULE='ibus'
export XMODIFIERS='@im=ibus'

exec dbus-launch --exit-with-session emacs -f exwm-enable
