all: html view
	echo done

html:
	cp ../../cyberaide/bib/vonLaszewski-jabref.bib docs/source/
	cd docs; make html


view:
	open docs/build/html/index.html

publish: all
	cd ../laszewski.github.io; make all
	cd ../laszewski.github.io; git add .
	cd ../laszewski.github.io; git commit -m "update webpage" .
	cd ../laszewski.github.io; git push

clean:
	rm -rf docs/build
