
OLDVER=draft-arkko-trip-registry-update-00.txt

all:	draft-arkko-trip-registry-update.txt

draft-arkko-trip-registry-update.txt:	draft-arkko-trip-registry-update.xml
	scp draft-arkko-trip-registry-update.xml $(OLDVER) jar@arkko.eu:
	ssh jar@arkko.eu xml2rfc draft-arkko-trip-registry-update.xml
	ssh jar@arkko.eu rfcdiff $(OLDVER) draft-arkko-trip-registry-update.txt
	scp jar@arkko.eu:draft-arkko-trip-registry-update.txt jar@arkko.eu:*trip-registry*.html .

copy:	draft-arkko-trip-registry-update.txt
	scp *trip-registry*.html draft-arkko-trip-registry-update.txt jar@cloud1.arkko.eu:/var/www/www.arkko.com/html/ietf/trip
