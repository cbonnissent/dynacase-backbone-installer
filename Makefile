VERSION=1.0
RELEASE=0

webinst:
	mkdir -p tmp
	tar -C src -zcf tmp/content.tar.gz .
	cp info.xml tmp/info.xml
	tar -C tmp -zcf dynacase-backbone-installer-${VERSION}-${RELEASE}.webinst info.xml content.tar.gz

clean:
	rm -Rf tmp
	rm -f dynacase-backbone-*.webinst