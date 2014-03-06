#!/usr/bin/env bash

set -e

for app in src/*
do
	cd $app
	echo updating $app
	git pull --rebase upstream HEAD
	cd -
done

source ./env/bin/activate
frappe --latest all --sites_dir sites
echo "Please restart all processes"
