default: all

all: articlept articleen articleru

articlept:
	cd article-pt && make
	mv article-pt/article.pdf laerdactron-pt.pdf

articleen:
	cd article-en && make
	mv article-en/article.pdf laerdactron-en.pdf

articleru:
	cd article-ru && make
	mv article-ru/article.pdf laerdactron-ru.pdf

clean:
	cd article-pt && make clean
	rm -f article*.pdf
