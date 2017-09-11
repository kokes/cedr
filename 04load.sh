#!/bin/bash

psql < pg.sql
for file in data/*.csv.gz; do
	tg=$(basename ${file})
	echo "loading $tg"

	gunzip -c $file | psql -c "copy ${tg%.csv.gz} from stdin with csv header;"
done
