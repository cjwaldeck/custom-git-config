#!/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

add_include_path ()
{
	# Add include path if it doesn't exist already
	local include_path=$script_dir/$1
	if [ -z `git config --global --list | grep $include_path` ]
	then
		git config --global --add include.path $include_path
	fi
}

add_include_path aliases
