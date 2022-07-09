#!/bin/bash
bibbld() {
latex $1.tex
bibtex $1
latex $1.tex
}
bld() {
    ls $1.blg || bibbld $1;
    latex $1.tex;
    dvipdf $1.dvi;
}

bldall(){
for i in `ls *.tex|grep -v tikz`
do
    bld `echo $i|grep -o -P '\w*'|head -n 1`&&./htmlbuild.sh $i
done    
exit 0;
}


ls $1.tex||bldall
ls $1.tex&& bld $1&&./htmlbuild.sh $i.tex
