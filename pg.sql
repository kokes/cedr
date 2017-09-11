drop table if exists AdresaBydliste; create table AdresaBydliste (
	idAdresa char(40) primary key,
	idPrijemce char(40),
	adrTyp varchar,
	iriStat varchar,
	obec varchar,
	obecKod int,
	obecNazev varchar,
	dPlatnost timestamp,
	dtAktualizace timestamp
);


drop table if exists AdresaSidlo; create table AdresaSidlo (
	idAdresa char(40) primary key,
	idPrijemce char(40),
	adrTyp varchar,
	iriStat varchar,
	iriObec varchar,
	obecKod int,
	obecNazev varchar,
	psc int,
	adresniMistoKod varchar,
	iriCastObce varchar,
	castObceKod varchar,
	cisloDomovni varchar,
	cisloOrientacni varchar,
	uliceKod varchar,
	ulice varchar,
	adresaText varchar,
	dPlatnost timestamp,
	dtAktualizace timestamp
);


drop table if exists Dotace; create table Dotace (
	idDotace char(40) primary key,
	idPrijemce char(40),
	projektKod varchar,
	podpisDatum timestamp,
	subjektRozliseniKod varchar,
	ukonceniPlanovaneDatum timestamp,
	ukonceniSkutecneDatum timestamp,
	zahajeniPlanovaneDatum timestamp,
	zahajeniSkutecneDatum timestamp,
	zmenaSmlouvyIndikator bool,
	projektIdnetifikator varchar,
	projektNazev varchar,
	iriOperacniProgram varchar,
	iriPodprogram varchar,
	iriPriorita varchar,
	iriOpatreni varchar,
	iriPodopatreni varchar,
	iriGrantoveSchema varchar,
	iriProgramPodpora varchar,
	iriTypCinnosti varchar,
	iriProgram varchar,
	dPlatnost timestamp,
	dtAktualizace timestamp
);


drop table if exists Etapa; create table Etapa (
	idEtapa char(40) primary key,
	idDotace char(40),
	etapaCislo varchar,
	etapaNazev varchar,
	ukonceniPlanovaneDatum timestamp,
	ukonceniSkutecneDatum timestamp,
	zahajeniPlanovaneDatum timestamp,
	zahajeniSkutecneDatum timestamp,
	poznamka varchar,
	dtAktualizace timestamp
);


drop table if exists PrijemcePomoci; create table PrijemcePomoci (
	idPrijemce char(40) primary key,
	ico char(8), -- diskutabilni
	obchodniJmeno varchar,
	jmeno varchar,
	prijmeni varchar,
	iriPravniForma varchar,
	rokNarozeni smallint,
	iriStat varchar,
	iriOsoba varchar,
	iriEkonomikaSubjekt varchar,
	dPlatnost timestamp,
	dtAktualizace timestamp
);


drop table if exists Rozhodnuti; create table Rozhodnuti (
	idRozhodnuti char(40) primary key,
	idDotace char(40),
	castkaPozadovana float,
	castkaRozhodnuta float,
	iriPoskytovatelDotace varchar,
	iriCleneniFinancnichProstredku varchar,
	iriFinancniZdroj varchar,
	rokRozhodnuti varchar,
	investiceIndikator bool,
	navratnostIndikator bool,
	refundaceIndikator bool,
	dPlatnost timestamp,
	dtAktualizace timestamp
);


drop table if exists RozhodnutiSmlouva; create table RozhodnutiSmlouva (
	idSmlouva char(40) primary key,
	idRozhodnuti char(40),
	cisloJednaciRozhodnuti varchar,
	dokumentDruhKod varchar,
	rozhodnutiDatum timestamp,
	dtAktualizace timestamp
);


drop table if exists RozpoctoveObdobi; create table RozpoctoveObdobi (
	idObdobi char(40) primary key,
	idRozhodnuti char(40),
	castkaCerpana float,
	castkaUvolnena float,
	castkaVracena float,
	castkaSpotrebovana float,
	rozpoctoveObdobi varchar,
	vyporadaniKod varchar,
	iriDotacniTitul varchar,
	iriUcelovyZnak varchar,
	dPlatnost timestamp,
	dtAktualizace timestamp
);


drop table if exists SplatkaKalendar; create table SplatkaKalendar (
	idSKalendar char(40) primary key,
	idRozhodnuti char(40),
	castkaSplatkaPlanovana float,
	castkaSplatkaSkutecna float,
	uroceniIndikator bool,
	dtAktualizace timestamp
);


drop table if exists UzemniRealizace; create table UzemniRealizace (
	idUzemi char(40) primary key,
	idDotace char(40),
	mezinarodniPusobnostIndikator bool,
	iriRealizovanNaUzemiStatu varchar,
	uzemniRealizacePopis varchar,
	obvodPrahaPredavaciKod varchar,
	spravniObvodPrahaPredavaciKod varchar,
	stavebniObjektKod varchar,
	uliceKod varchar,
	iriCastObce varchar,
	iriKraj varchar,
	iriMestskyObvodMestskaCast varchar,
	iriObec varchar,
	iriOkres varchar,
	iriVusc varchar,
	adresniMistoKod varchar,
	okresNutsKod varchar,
	dtAktualizace timestamp,
	dPlatnost timestamp
);


drop table if exists ciselnikCedrCinnostTypev01; create table ciselnikCedrCinnostTypev01 (
	idCinnostTyp varchar,
	idGrantoveSchema varchar,
	cinnostTypKod varchar,
	cinnostTypNazev varchar,
	cinnostTypCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikCedrGrantoveSchemav01; create table ciselnikCedrGrantoveSchemav01 (
	idGrantoveSchema varchar,
	grantoveSchemaKod varchar,
	grantoveSchemaNazev varchar,
	grantoveSchemaCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikCedrOpatreniv01; create table ciselnikCedrOpatreniv01 (
	idOpatreni varchar,
	idPriorita varchar,
	opatreniKod varchar,
	opatreniNazev varchar,
	opatreniCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikCedrOperacniProgramv01; create table ciselnikCedrOperacniProgramv01 (
	idOperacniProgram varchar,
	operacaniProgramKod varchar,
	operacaniProgramNazev varchar,
	operacaniProgramCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikCedrPodOpatreniv01; create table ciselnikCedrPodOpatreniv01 (
	idPodOpatreni varchar,
	idOpatreni varchar,
	podOpatreniKod varchar,
	podOpatreniNazev varchar,
	podOpatreniCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikCedrPodprogramv01; create table ciselnikCedrPodprogramv01 (
	idPopdprogram varchar,
	idOperacniProgram varchar,
	podprogramKod varchar,
	podprogramNazev varchar,
	podprogramCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikCedrPrioritav01; create table ciselnikCedrPrioritav01 (
	idPriorita varchar,
	idOperacniProgram varchar,
	idPodprogram varchar,
	prioritaKod varchar,
	prioritaNazev varchar,
	prioritaCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikCedrProgramPodporav01; create table ciselnikCedrProgramPodporav01 (
	idProgramPodpora varchar,
	idCinnostTyp varchar,
	programPodporaKod varchar,
	programPodporaNazev varchar,
	programPodporaCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikDotacePoskytovatelv01; create table ciselnikDotacePoskytovatelv01 (
	id varchar,
	dotacePoskytovatelKod varchar,
	dotacePoskytovatelNazev varchar,
	dotacePoskytovatelNadrizenyKod varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikDotaceTitul_RozpoctovaSkladbaParagrafv01; create table ciselnikDotaceTitul_RozpoctovaSkladbaParagrafv01 (
	idDotaceTitul varchar,
	idRozpoctovaSkladbaParagraf varchar,
	zaznamDatumPlatnost timestamp
);


drop table if exists ciselnikDotaceTitul_RozpoctovaSkladbaPolozkav01; create table ciselnikDotaceTitul_RozpoctovaSkladbaPolozkav01 (
	idDotaceTitul varchar,
	idRozpoctovaSkladbaPolozka varchar,
	zaznamDatumPlatnost timestamp
);


drop table if exists ciselnikDotaceTitul_StatniRozpocetUkazatelv01; create table ciselnikDotaceTitul_StatniRozpocetUkazatelv01 (
	idDotaceTitul varchar,
	idStatniRozpocetUkazatel varchar,
	zaznamDatumPlatnost timestamp
);


drop table if exists ciselnikDotaceTitulv01; create table ciselnikDotaceTitulv01 (
	idDotaceTitul varchar,
	dotaceTitulKod varchar,
	dotaceTitulVlastniKod varchar,
	statniRozpocetKapitolaKod varchar,
	dotaceTitulNazev varchar,
	dotaceTitulNazevZkraceny varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikFinancniProstredekCleneniv01; create table ciselnikFinancniProstredekCleneniv01 (
	id varchar,
	financniProstredekCleneniKod varchar,
	financniProstredekCleneniNazev varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikFinancniZdrojv01; create table ciselnikFinancniZdrojv01 (
	id varchar,
	financniZdrojKod varchar,
	financniZdrojNadrizenyKod varchar,
	financniZdrojNazev varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikRozpoctovaSkladbaParagrafv01; create table ciselnikRozpoctovaSkladbaParagrafv01 (
	id varchar,
	rozpoctovaSkladbaParagrafKod varchar,
	rozpoctovaSkladbaParagrafNazev varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikRozpoctovaSkladbaPolozkav01; create table ciselnikRozpoctovaSkladbaPolozkav01 (
	id varchar,
	rozpoctovaSkladbaPolozkaKod varchar,
	rozpoctovaSkladbaPolozkaNazev varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikStatniRozpocetKapitolav01; create table ciselnikStatniRozpocetKapitolav01 (
	id varchar,
	statniRozpocetKapitolaKod varchar,
	statniRozpocetKapitolaNazev varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikStatniRozpocetUkazatelv01; create table ciselnikStatniRozpocetUkazatelv01 (
	id varchar,
	idStatniRozpocetKapitola varchar,
	statniRozpocetUkazatelKod varchar,
	statniRozpocetKapitolaKod varchar,
	statniRozpocetUkazatelNadrizenyKod varchar,
	statniRozpocetUkazatelNazev varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikUcelZnak_DotacniTitulv01; create table ciselnikUcelZnak_DotacniTitulv01 (
	idUcelZnak varchar,
	idDotaceTitul varchar,
	zaznamDatumPlatnost timestamp
);


drop table if exists ciselnikUcelZnakv01; create table ciselnikUcelZnakv01 (
	idUcelZnak varchar,
	ucelZnakKod varchar,
	statniRozpocetKapitolaKod varchar,
	ucelZnakNazev varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


-- datasety mimo CEDR

drop table if exists EkonomikaSubjekt; create table EkonomikaSubjekt (
	id varchar primary key,
	ico char(8)
);

drop table if exists Osoba; create table Osoba (
	id varchar primary key,
	jmeno varchar,
	prijmeni varchar,
	narozeniRok integer,
	bydlisteObecKod integer
);

drop table if exists ciselnikKrajv01; create table ciselnikKrajv01 (
	id varchar primary key,
	krajKod varchar,
	krajNazev varchar,
	globalniNavrhZmenaIdentifikator varchar,
	nespravnostIndikator bool,
	transakceIdentifikator varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikMestskyObvodMestskaCastv01; create table ciselnikMestskyObvodMestskaCastv01 (
	id varchar primary key,
	mestskyObvodMestskaCastKod varchar,
	mestskyObvodMestskaCastNazev varchar,
	obecNad varchar,
	pad2 varchar,
	pad3 varchar,
	pad4 varchar,
	pad5 varchar,
	pad6 varchar,
	pad7 varchar,
	globalniNavrhZmenaIdentifikator varchar,
	nespravnostIndikator bool,
	transakceIdentifikator varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikMmrCinnostTypev01; create table ciselnikMmrCinnostTypev01 (
	idCinnostTyp varchar primary key,
	idGrantoveSchema varchar,
	cinnostTypKod varchar,
	cinnostTypNazev varchar,
	cinnostTypCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikMmrGrantoveSchemav01; create table ciselnikMmrGrantoveSchemav01 (
	idGrantoveSchema varchar primary key,
	grantoveSchemaKod varchar,
	grantoveSchemaNazev varchar,
	grantoveSchemaCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikMmrOpatreniv01; create table ciselnikMmrOpatreniv01 (
	idOpatreni varchar primary key,
	idPriorita varchar,
	opatreniKod varchar,
	opatreniNazev varchar,
	opatreniCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikMmrOperacniProgramv01; create table ciselnikMmrOperacniProgramv01 (
	idOperacniProgram varchar primary key,
	operacaniProgramKod varchar,
	operacaniProgramNazev varchar,
	operacaniProgramCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikMmrPodOpatreniv01; create table ciselnikMmrPodOpatreniv01 (
	idPodOpatreni varchar primary key,
	idOpatreni varchar,
	podOpatreniKod varchar,
	podOpatreniNazev varchar,
	podOpatreniCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikMmrPopdprogramv01; create table ciselnikMmrPopdprogramv01 (
	);


drop table if exists ciselnikMmrPrioritav01; create table ciselnikMmrPrioritav01 (
	idPriorita varchar primary key,
	idOperacniProgram varchar,
	idPodprogram varchar,
	prioritaKod varchar,
	prioritaNazev varchar,
	prioritaCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikMmrProgramPodporav01; create table ciselnikMmrProgramPodporav01 (
	idProgramPodpora varchar primary key,
	idCinnostTyp varchar,
	programPodporaKod varchar,
	programPodporaNazev varchar,
	programPodporaCislo varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikObecv01; create table ciselnikObecv01 (
	id varchar primary key,
	obecKod varchar,
	obecNutsKod varchar,
	obecNazev varchar,
	okresNad varchar,
	pad2 varchar,
	pad3 varchar,
	pad4 varchar,
	pad5 varchar,
	pad6 varchar,
	pad7 varchar,
	globalniNavrhZmenaIdentifikator varchar,
	nespravnostIndikator bool,
	transakceIdentifikator varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikOkresv01; create table ciselnikOkresv01 (
	id varchar primary key,
	okresKod varchar,
	okresNazev varchar,
	okresNutsKod varchar,
	krajNad varchar,
	vuscNad varchar,
	globalniNavrhZmenaIdentifikator varchar,
	nespravnostIndikator bool,
	transakceIdentifikator varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikPravniFormav01; create table ciselnikPravniFormav01 (
	id varchar primary key,
	pravniFormaKod varchar,
	pravniFormaNazev varchar,
	pravniFormaNazevZkraceny varchar,
	pravniFormaTypKod varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);


drop table if exists ciselnikProgramv01; create table ciselnikProgramv01 (
	id varchar primary key,
	programKod varchar,
	programNazev varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);

drop table if exists ciselnikStatv01; create table ciselnikStatv01 (
	id varchar primary key,
	statKod3Znaky varchar,
	statKod3Cisla varchar,
	statKodOmezeny varchar,
	statNazev varchar,
	statNazevZkraceny varchar,
	statNazevEn varchar,
	statNazevZkracenyEn varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);

drop table if exists ciselnikVuscv01; create table ciselnikVuscv01 (
	id varchar primary key,
	vuscKod varchar,
	krajNutsKod varchar,
	vuscNazev varchar,
	globalniNavrhZmenaIdentifikator varchar,
	nespravnostIndikator bool,
	transakceIdentifikator varchar,
	zaznamPlatnostOdDatum timestamp,
	zaznamPlatnostDoDatum timestamp
);
