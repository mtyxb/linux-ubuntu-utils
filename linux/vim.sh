#!/bin/bash


VIM_PATH=

#user can set this variable
VIM_INCLUDE_ROOT_PATH=/usr:${VIM_INCLUDE_ROOT_PATH}
VIM_TEMP_PATH=${VIM_INCLUDE_ROOT_PATH}
VIM_TEMP_PATH=$(echo -e ${VIM_TEMP_PATH//:/\\n}|sort|uniq|xargs)
VIM_INCLUDE_ROOT_PATH=${VIM_TEMP_PATH// /:}
echo "VIM_INCLUDE_ROOT_PATH={$VIM_INCLUDE_ROOT_PATH}"

#each element is a include root directory
VIM_INCLUDE_ROOT_DIRS=(${VIM_INCLUDE_ROOT_PATH//:/ })

#each element is a include directory which contains at least one  .h file
VIM_INCLUDE_DIRS=()

#visit every root directories to find all sub-directories named with 'include'
for d in "${VIM_INCLUDE_ROOT_DIRS[@]}"; do
#	echo "find include directory in directory {$d} .."
	VIM_ROOT_DIR=$(find $d -type d -name "include" -readable)
	VIM_INCLUDE_DIRS+=($VIM_ROOT_DIR)	
done

#VIM_PATH will be used in ~/.vimrc file

#visit every include directories to find all sub-directories which contains at least one .h file
VIM_DIRS=()
let i=0
while [[ $i -lt ${#VIM_INCLUDE_DIRS[@]} ]]; do
	d=${VIM_INCLUDE_DIRS[$i]}
	VIM_DIRS+=($(find $d -type f -name "*.h" -printf "%h\n"|sort|uniq|xargs))
	VIM_DIRS+=($(find $d -type d|sort|uniq|xargs))
	let i=i+1
done

VIM_TEMP_PATH=${VIM_DIRS[@]}
VIM_TEMP_PATH=${VIM_TEMP_PATH// /\\n} 
VIM_TEMP_PATH=$(echo -e ${VIM_TEMP_PATH}|sort|uniq|xargs)
VIM_PATH=${VIM_TEMP_PATH// /,}
export VIM_PATH

