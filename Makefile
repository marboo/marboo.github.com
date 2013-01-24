default:
	jekyll . ~/Dropbox/Apps/FarBox/marboo
	cp -r ../media ~/Dropbox/Apps/FarBox/marboo
	cp -r ~/.MarkBook/build/bootstrap ~/Dropbox/Apps/FarBox/marboo
	mkdir ~/Dropbox/Apps/FarBox/marboo/guide
	cp -r ~/.MarkBook/build/misc/marboo-doc/README.rst.html ~/Dropbox/Apps/FarBox/marboo/guide/index.html
	cp -r ~/Dropbox/Apps/FarBox/marboo/* ~/Dropbox/Apps/FarBox/markbook
	curl http://farbox.com/service/sync/dropbox/676608
