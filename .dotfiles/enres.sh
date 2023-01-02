#!/bin/sh

if [ "$1" = "-e" ]; then
	tar czf res.tar.gz res/
	gpg -c res.tar.gz
	rm res.tar.gz
	exit
fi

if [ "$1" = "-d" ]; then
	gpg -do res.tar.gz res.tar.gz.gpg
	tar xvf res.tar.gz
	rm res.tar.gz
	exit
fi
