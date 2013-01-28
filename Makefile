default:
	cp ~/.marboo/build/misc/marboo-doc/README.rst.html guide/index.html
	jekyll . ~/Dropbox/Apps/FarBox/marboo
	cp .gitignore ~/Dropbox/Apps/FarBox/marboo
	cp -r ../media ~/Dropbox/Apps/FarBox/marboo
	cp -r ~/.marboo/build/bootstrap ~/Dropbox/Apps/FarBox/marboo
	curl http://farbox.com/service/sync/dropbox/676608
