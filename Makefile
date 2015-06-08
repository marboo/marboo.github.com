#dest=~/Dropbox/Apps/FarBox/marboo
dest=/tmp/marboo.io
default:
#	cp ~/Library/Application\ Support/Marboo/www/misc/marboo-doc/README.rst.html guide/index.html
	#cp ~/.marboo/build/marboo/install.rst.html install-crx.html
	jade -O index.jade.json -P < views/index.jade > index.html
	jade -O zh_CN/index.jade.json -P < views/index.jade > zh_CN/index.html
	jade -O packages.jade.json -P < views/packages.jade > packages/index.html
	#find . -name *.jade | xargs jade -P
	jekyll build -s . -d ${dest}
	mkdir -p ${dest}/media/packages
	#cp -r ../../.media/marboo.io ${dest}/media/marboo.biz
	cp -r ../../.media/css ${dest}/media/
	#find .|grep index.html | xargs rm -f
	find ${dest}|grep jade$$ |xargs rm -f
	find ${dest}|grep json$$ |xargs rm -f
#	cp ~/Library/Application\ Support/Marboo/www/WebSites/marboo.biz/source/install.md.html i/build/Marboo-for-Web-介绍.md.html
#	cp ~/Library/Application\ Support/Marboo/www/WebSites/marboo.biz/source/install.md.html install-crx.html

#	cp -r ../../.media/packages/markdown ${dest}/media/packages

	mkdir ${dest}/media/images
	cp -r ../../media_v0.6/images/marboo ${dest}/media/images
	cp -r ../../.media/marboo.io/images/icons/* ${dest}/media/images/marboo
	cp -r ../../.media/lib ${dest}/media/

#	cp ~/Library/Application\ Support/Marboo/www/slides/marboo-intro.remark.md.html ${dest}/marboo-intro.remark.md.html
	cp .gitignore ${dest}
clean:
	find .|grep index.html | xargs rm -f

notes:
	cp ~/.marboo/build/slides/marboo-intro.remark.md.html ~/.marboo/source/WebSites/marboo.biz/i/build
	cp ~/.marboo/build/MyNotes.localized/Poem/a-blooming-tree.poem.md.html ~/.marboo/source/WebSites/marboo.biz/i/build/一颗开花的树.poem.md.html
	cp ~/.marboo/build/media/demo/syntax-highlight/hello-world.c.html ~/.marboo/source/WebSites/marboo.biz/i/build
