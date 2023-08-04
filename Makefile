clean:
	./clean.sh
	./cleanhtml.sh
html:
	./htmlbuild.sh
pdf:
	./build.sh
all:
	./build.sh
	./htmlbuild.sh

