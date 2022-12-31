#!/bin/sh

static=static-$1
link=$1
volatile=/dev/shm/firefox-$1-$USER

IFS=
set -efu

cd ~/.librewolf || exit

if [ ! -r $volatile ]; then
	mkdir -m0700 $volatile
fi

if [ "$(readlink $link)" != "$volatile" ]; then
	mv $link $static
	ln -s $volatile $link
fi

if [ -e $link/.unpacked ]; then
	rsync -av --delete --exclude .unpacked ./$link/ ./$static/
	echo "moved volatile profile into static storage"
else
	rsync -av ./$static/ ./$link/
	touch $link/.unpacked
	echo "moved static profile into volatile storage"
fi
