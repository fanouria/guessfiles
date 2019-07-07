all: README.md
README.md:
	touch README.md
	echo "\n Git Project : guessfiles \n">>README.md
	echo -n "\n Run on : ">>README.md
	date>>README.md
	echo -n "\n Number of lines in code: ">>README.md
	wc -l guessinggame.sh>>README.md

clean:
	rm README.md 
