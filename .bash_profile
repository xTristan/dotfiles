#!/bin/bash

if [ -e ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

export CLICOLOR=1
export LSCOLORS=gxBxhxDxCxhxhxhxhxcxcx
##export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
##
# Your previous /Users/jianl/.bash_profile file was backed up as /Users/jianl/.bash_profile.macports-saved_2015-07-18_at_21:14:36
##

# MacPorts Installer addition on 2015-07-18_at_21:14:36: adding an appropriate PATH variable for use with MacPorts.
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/"
export APPENGINE_PATH="~/Workspaces/libs/appengine-java-sdk-1.9.32/bin"
export MAVEN_PATH="~/Workspaces/libs/apache-maven-3.3.9/bin"
export PATH="/opt/local/bin:/opt/local/sbin:$APPENGINE_PATH:$MAVEN_PATH:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"
