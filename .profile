#!/bin/sh

export TERMINAL=urxvtc
export VISUAL='emacsclient -c'
export BROWSER=firefox

export ANDROID_SDK_ROOT=$HOME/android
export ANDROID_HOME=$ANDROID_SDK_ROOT
export QEMU_AUDIO_DRV=none
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/tools/bin

export FLUTTER_ROOT=$HOME/flutter
export DART_SDK_PATH=$FLUTTER_ROOT/bin/cache/dart-sdk
export PATH=$PATH:$FLUTTER_ROOT/bin:$DART_SDK_PATH/bin

export NO_AT_BRIDGE=1

# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_DOWNLOAD_DIR=$HOME/Downloads
export XDG_DESKTOP_DIR=$XDG_DOWNLOAD_DIR
export XDG_DOCUMENTS_DIR=$HOME/Documents
export XDG_MUSIC_DIR=$HOME/Music

# XDG_CACHE_HOME
export __GL_SHADER_DISK_CACHE_PATH=$XDG_CACHE_HOME/nv
export CUDA_CACHE_PATH=$XDG_CACHE_HOME/nv
export GEM_SPEC_CACHE=$XDG_CACHE_HOME/gem
export BUNDLE_CACHE_PATH=$XDG_CACHE_HOME/bundle
export PUB_CACHE=$XDG_CACHE_HOME/pub
export _JAVA_OPTIONS="-Djava.io.tmpdir=${XDG_CACHE_HOME}/java"

# XDG_DATA_HOME
export GRADLE_USER_HOME=$XDG_DATA_HOME/gradle
export ANDROID_EMULATOR_HOME=$XDG_DATA_HOME/android
export GEM_HOME=$XDG_DATA_HOME/gem

# XDG_RUNTIME_DIR
export RXVT_SOCKET=$XDG_RUNTIME_DIR/urxvtd
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

if [ -z $DISPLAY ] && [ $XDG_VTNR -eq 1 ]; then
  exec xinit -- /usr/bin/Xorg -nolisten tcp "$@" vt1
fi
