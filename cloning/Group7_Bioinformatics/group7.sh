
#!/usr/bin/env bash

git clone https://github.com/abbussalma/Group7_Bioinformatics.git

cd ./Group7_Bioinformatics.git

chmod +x script* 


for i in $(ls script*)
do
	./$i | awk -F ',' '{OFS="\t";print $1,$2,$3,$4,$5}' >> Group7script.csv
done


