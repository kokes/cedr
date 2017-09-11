Ministerstvo vnitra vydalo CEDR, registr dotací, [jako otevřená data](http://cedr.mfcr.cz/Cedr3InternetV419/OpenData/DocumentationPage.aspx), takže si je může kdokoliv zpracovat. Bohužel samotná publikace nestačí, je třeba data mírně předzpracovat. Pokud by se vám do toho nechtělo, mám tu sadu shell skriptů, které tu námahu udělají za vás a vy skončíte s datasetem v maximálně neoptimalizované sadě tabulek v postgresql.

Potřebovat budete konzoli, `wget`, `7z`, `gzip`, `awk`, `sed` a `pg` samotnou. Kdybyste si to chtěli uzpůsobit pro vlastní relační databázi, stačí upravit `pq.sql` a daný nahrávací mechanismus v `load.sh`.

Hodně zábavy přeju.