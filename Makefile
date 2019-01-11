CP1251=$(wildcard *.cp1251)

all: $(CP1251:cp1251=utf8)

%.utf8: %.cp1251
	iconv -f cp1251 -t utf8 $< > $@
