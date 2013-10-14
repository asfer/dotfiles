#!/usr/bin/env bash

REPO=$HOME/dotfiles

for dotfile in $REPO/.*
do
	link=$HOME/$(basename $dotfile)
	[ ! -d "$dotfile" ] && ln -s $dotfile $target
done
