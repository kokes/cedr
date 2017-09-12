#!/bin/bash
mkdir -p tmp
rm -f tmp/*
mkdir -p data

for file in raw-data/*.csv.7z; do

	7z x -otmp $file

	# tenhle soubor ma v sobe dva ciselniky bohuzel
	if [ "$(basename $file)" = "ciselnikUcelZnakv01.csv.7z" ]; then
		head -n1 "tmp/ciselnikUcelZnak_DotacniTitulv010.csv" > data/ciselnikUcelZnak_DotacniTitulv01.csv
		awk 'FNR>1' tmp/ciselnikUcelZnak_*.csv >> data/ciselnikUcelZnak_DotacniTitulv01.csv

		head -n1 "tmp/ciselnikUcelZnakv010.csv" > data/ciselnikUcelZnakv01.csv
		awk 'FNR>1' tmp/ciselnikUcelZnakv*.csv >> data/ciselnikUcelZnakv01.csv
	elif [ "$(basename $file)" = "ciselnikDotaceTitulv01.csv.7z" ]; then
		head -n1 "tmp/ciselnikDotaceTitul_RozpoctovaSkladbaParagrafv010.csv" > data/ciselnikDotaceTitul_RozpoctovaSkladbaParagrafv01.csv
		awk 'FNR>1' tmp/ciselnikDotaceTitul_RozpoctovaSkladbaParagraf*.csv >> data/ciselnikDotaceTitul_RozpoctovaSkladbaParagrafv01.csv

		head -n1 "tmp/ciselnikDotaceTitul_RozpoctovaSkladbaPolozkav010.csv" > data/ciselnikDotaceTitul_RozpoctovaSkladbaPolozkav01.csv
		awk 'FNR>1' tmp/ciselnikDotaceTitul_RozpoctovaSkladbaPolozka*.csv >> data/ciselnikDotaceTitul_RozpoctovaSkladbaPolozkav01.csv

		head -n1 "tmp/ciselnikDotaceTitul_StatniRozpocetUkazatelv010.csv" > data/ciselnikDotaceTitul_StatniRozpocetUkazatelv01.csv
		awk 'FNR>1' tmp/ciselnikDotaceTitul_StatniRozpocetUkazatel*.csv >> data/ciselnikDotaceTitul_StatniRozpocetUkazatelv01.csv

		head -n1 "tmp/ciselnikDotaceTitulv010.csv" > data/ciselnikDotaceTitulv01.csv
		awk 'FNR>1' tmp/ciselnikDotaceTitulv*.csv >> data/ciselnikDotaceTitulv01.csv
	else
		tg="data/$(basename ${file%.*})"
		tcsv=(tmp/*.csv)
		head -n1 ${tcsv[0]} > ${tg}
		awk 'FNR>1' tmp/*.csv >> $tg
	fi

	rm tmp/*.csv
done

gzip -f data/*.csv
