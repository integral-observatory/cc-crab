%: 
	git clone https://gitlab.astro.unige.ch/savchenk/ci-template-cc.git || \
	    (cd ci-template-cc; git pull )
	make -f ci-template-cc/Makefile $@
