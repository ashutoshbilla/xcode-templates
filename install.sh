#!/bin/bash

step=1
echo "**************************"
echo $"$step. Copying project templates..."

target=~/Library/Developer/Xcode/Templates/Project\ Templates/iOS/Application

if [ ! -d "$target" ]
then
#    step=$((step + 1))
    ((step++))
    echo "$step. Target directory $target does not exists"
    
    ((step++))
    echo "$step. Creating a directory"
    mkdir -p "$target"
fi

src=Project\ Templates/*.xctemplate

cp -r Project\ Templates/*.xctemplate "$target"

if [ $? -eq 0 ]
then
    ((step++))
    echo "$step. Project templates copied to -"
    echo $target
fi

echo "**************************"
