#!/usr/bin/env bash

set -e

for app in apps/*
do
	cd $app
	echo updating $app
	git pull --rebase upstream HEAD
	cd -
done

source ./env/bin/activate
frappe --latest all --sites_apps sites
echo "Please restart all processes"
