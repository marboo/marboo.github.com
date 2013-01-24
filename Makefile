default:
	jekyll . ~/Dropbox/Apps/FarBox/markbook
	cp -r ../media ~/Dropbox/Apps/FarBox/markbook
	cp -r ~/.MarkBook/build/bootstrap ~/Dropbox/Apps/FarBox/markbook
	cp -r ~/.MarkBook/build/misc/markbook-doc/README.rst.html ~/Dropbox/Apps/FarBox/markbook/guide/index.html
