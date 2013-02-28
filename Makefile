#dest=~/Dropbox/Apps/FarBox/marboo
dest=/tmp/marboo.biz
default:
	cp ~/.marboo/build/misc/marboo-doc/README.rst.html guide/index.html
	find .|grep jade| xargs jade -P
	/Users/amoblin/.rvm/gems/ruby-1.9.3-p125/bin/jekyll . ${dest}
	cp .gitignore ${dest}
	mkdir -p ${dest}/media/{images,bg-images}
	cp -r ../media/images/marboo ${dest}/media/images
	cp -r ../media/bg-images/marboo* ${dest}/media/bg-images
	cp -r ../media/css ${dest}/media
	cp -r ~/.marboo/build/bootstrap ${dest}

clean:
	find .|grep index.html | xargs rm -f
