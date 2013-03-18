#dest=~/Dropbox/Apps/FarBox/marboo
dest=/tmp/marboo.biz
default:
	cp ~/.marboo/build/misc/marboo-doc/README.rst.html guide/index.html
	cp ~/.marboo/build/marboo/install.rst.html install-crx.html
	find .|grep jade| xargs jade -P
	/Users/amoblin/.rvm/gems/ruby-1.9.3-p125/bin/jekyll . ${dest}
	cp .gitignore ${dest}
	mkdir -p ${dest}/media/images/bg
	cp -r ../media/images/marboo ${dest}/media/images
	cp -r ../media/images/bg/marboo* ${dest}/media/images/bg
	cp -r ../media/css ${dest}/media
	cp -r ../media/lib ${dest}/media
	cp -r ~/.marboo/build/bootstrap ${dest}
	#find .|grep index.html | xargs rm -f
	find /tmp/marboo.biz|grep jade$$ |xargs rm -f

clean:
	find .|grep index.html | xargs rm -f
