#dest=~/Dropbox/Apps/FarBox/marboo
dest=/tmp/marboo.biz
default:
	#cp ~/.marboo/build/misc/marboo-doc/README.rst.html guide/index.html
	#cp ~/.marboo/build/marboo/install.rst.html install-crx.html
	find .|grep jade| xargs jade -P
	/Users/amoblin/.rvm/gems/ruby-1.9.3-p125/bin/jekyll build -s . -d ${dest}
	cp .gitignore ${dest}
	mkdir -p ${dest}/media/images/bg
	cp -r ../../media/images/marboo ${dest}/media/images
	#cp -r ../media/images/blog ${dest}/media/images
	cp -r ../../media/images/bg/marboo* ${dest}/media/images/bg
	cp -r ../../media/css ${dest}/media
	cp -r ../../media/lib ${dest}/media
	cp -r ../../media/js ${dest}/media
	cp -r ~/Dropbox/应用/Marboo/media/bootstrap ${dest}/media
	#cp -r ~/.marboo/build/bootstrap ${dest}
	#find .|grep index.html | xargs rm -f
	find /tmp/marboo.biz|grep jade$$ |xargs rm -f
	cp ~/Library/Application\ Support/Marboo/www/WebSites/marboo.biz/source/install.md.html i/build/Marboo-for-Web-介绍.md.html
	cp ~/Library/Application\ Support/Marboo/www/WebSites/marboo.biz/source/install.md.html install-crx.html

clean:
	find .|grep index.html | xargs rm -f

notes:
	cp ~/.marboo/build/slides/marboo-intro.remark.md.html ~/.marboo/source/WebSites/marboo.biz/i/build
	cp ~/.marboo/build/MyNotes.localized/Poem/a-blooming-tree.poem.md.html ~/.marboo/source/WebSites/marboo.biz/i/build/一颗开花的树.poem.md.html
	cp ~/.marboo/build/media/demo/syntax-highlight/hello-world.c.html ~/.marboo/source/WebSites/marboo.biz/i/build
