#!/bin/bash
bld (){
mkdir html
cp *.eps html
cp *tikz.tex* html
cd html
htlatex ../$1
}

ls $1&&bld $1
