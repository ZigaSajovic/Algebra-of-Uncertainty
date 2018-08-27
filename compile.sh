#!/bin/bash

if [[ ! -d "pdf" ]];then
  mkdir "pdf"
fi

cd ./latex

for i in $(seq 2);do
  pdflatex -halt-on-error -output-directory ../pdf Algebra_Of_Uncertainty.tex
done

cd ../pdf/
rm $(ls|grep -v *.pdf)

exit 0
