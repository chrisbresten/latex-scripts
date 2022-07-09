#!/bin/bash
clean(){
echo "rm $1.aux"
rm $1.aux
echo "rm $1.bbl"
rm $1.bbl
echo "rm $1.blg"
rm $1.blg
echo "rm $1.dvi"
rm $1.dvi
echo "rm $1.log"
rm $1.log

}

for i in `ls *.tex|grep -v tikz`
do
    clean `echo $i|grep -o -P '\w*'|head -n 1`
done

