#!/usr/bin/env bash

set -e

for $app in src/*
do
	cd $app
	echo updating $app
	git pull --rebase upstream HEAD
	cd ..
done

echo "Please restart all processes"
