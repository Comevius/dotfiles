#!/bin/sh

export TERMINAL="urxvtc"
export VISUAL="emacsclient -c"
export BROWSER="firefox"

export QEMU_AUDIO_DRV="none"
export NO_AT_BRIDGE="1"
export _JAVA_AWT_WM_NONREPARENTING="1"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# XDG_CONFIG_HOME
export IDEA_PROPERTIES="$XDG_CONFIG_HOME/idea.properties"
export CL_PROPERTIES="$XDG_CONFIG_HOME/clion.properties"
export STUDIO_PROPERTIES="$XDG_CONFIG_HOME/studio.properties"
export WEBIDE_PROPERTIES="$XDG_CONFIG_HOME/webstorm.properties"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME/npm/npm-init.js"

# XDG_CACHE_HOME
export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME/nv"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export BUNDLE_CACHE_PATH="$XDG_CACHE_HOME/bundle"
export PUB_CACHE="$XDG_CACHE_HOME/pub"
export _JAVA_OPTIONS="-Djava.io.tmpdir=$XDG_CACHE_HOME/java"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"

# XDG_DATA_HOME
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export GEM_HOME="$XDG_DATA_HOME/gem"
export ANDROID_SDK_HOME="$XDG_DATA_HOME/android"
export ANDROID_EMULATOR_HOME="$ANDROID_SDK_HOME"
export ANDROID_AVD_HOME="$ANDROID_SDK_HOME/avd"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_PREFIX="$XDG_DATA_HOME/npm"

# XDG_RUNTIME_DIR
export RXVT_SOCKET="$XDG_RUNTIME_DIR/urxvtd"
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR/npm"

# Android
export ANDROID_SDK_ROOT="$HOME/android"
export ANDROID_HOME="$ANDROID_SDK_ROOT"
export SDKMANAGER_OPTS="--add-modules=java.xml.bind"

# Flutter
export FLUTTER_ROOT="$HOME/flutter"
export DART_SDK_PATH="$FLUTTER_ROOT/bin/cache/dart-sdk"

# PATH
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/tools/bin"
export PATH="$PATH:$FLUTTER_ROOT/bin:$DART_SDK_PATH/bin"
export PATH="$PATH:$NPM_CONFIG_PREFIX/bin"

export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec xinit -- /usr/bin/Xorg -nolisten tcp -nolisten local "$@" vt1
fi
