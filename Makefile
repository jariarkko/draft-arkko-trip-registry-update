
all:	draft-arkko-trip-registry-update.txt \
	draft-arkko-trip-registry-rationale.txt

draft-arkko-trip-registry-update.txt:	draft-arkko-trip-registry-update.xml
	scp draft-arkko-trip-registry-update.xml jar@arkko.eu:
	ssh jar@arkko.eu xml2rfc draft-arkko-trip-registry-update.xml
	scp jar@arkko.eu:draft-arkko-trip-registry-update.txt .
