.PHONY: all
all: draft-irtf-cfrg-ristretto255.txt draft-irtf-cfrg-ristretto255.html

draft-irtf-cfrg-ristretto255.txt: draft-irtf-cfrg-ristretto255.xml
	xml2rfc --v3 -q --no-pagination draft-irtf-cfrg-ristretto255.xml

draft-irtf-cfrg-ristretto255.html: draft-irtf-cfrg-ristretto255.xml
	xml2rfc --v3 -q --html --no-external-js draft-irtf-cfrg-ristretto255.xml

draft-irtf-cfrg-ristretto255.xml: draft-irtf-cfrg-ristretto255.md
	mmark draft-irtf-cfrg-ristretto255.md > draft-irtf-cfrg-ristretto255.xml
