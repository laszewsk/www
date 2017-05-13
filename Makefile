all: html view
	echo done

html:
	cp ../../cyberaide/bib/vonLaszewski-jabref.bib docs/source/
	cd docs; make html


view:
	open docs/build/html/index.html
