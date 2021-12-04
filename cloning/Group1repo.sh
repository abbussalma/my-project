
#!/usr/bin/env bash

git clone https://github.com/SadeeqMg01/Bioinformatics-Spreadsheet-project

cd ./Bioinformatics-Spreadsheet-project

chmod +x script* 


for i in $(ls script*)
do

       ./$i  |  awk -F ',' '{OFS=";print $1,$2,$3,$4,$5}' >> final_output.csv
done
