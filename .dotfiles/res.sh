#!/bin/sh

if [ "$1" = "-e" ]; then
	tar czf resources.tar.gz resources/
	gpg -c resources.tar.gz
	rm resources.tar.gz
	exit
fi

if [ "$1" = "-d" ]; then
	gpg -do resources.tar.gz resources.tar.gz.gpg
	tar xvf resources.tar.gz
	rm resources.tar.gz
	exit
fi
