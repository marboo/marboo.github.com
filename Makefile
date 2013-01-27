default:
	cp ../misc/marboo-doc/README.rst guide/index.rst
	jekyll . ~/Dropbox/Apps/FarBox/marboo
	cp -r ../media ~/Dropbox/Apps/FarBox/marboo
	cp -r ~/.marboo/build/bootstrap ~/Dropbox/Apps/FarBox/marboo
	curl http://farbox.com/service/sync/dropbox/676608
	rm guide/index.rst
