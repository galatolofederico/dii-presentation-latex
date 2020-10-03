all:
	latexmk -pdf -quiet -f slides.tex || (notify-send "build failed"; exit 1)
clean:
	latexmk -C
	rm -f slides.nav slides.snm

