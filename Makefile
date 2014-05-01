
cda.json : cda.db mkgeo
	./mkgeo < cda.db > cda.json

cda.tsv:  cda.db
	compute < cda.db "RA_NOM*=15;DEC_NOM+=0" | column RA_NOM=ra DEC_NOM=dc | grep -v -- "----" > cda.tsv
