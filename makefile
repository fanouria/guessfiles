all: README.md
README.md:
	touch README.md
	echo "Git Project:guessfiles">>README.md
	date>>README.md
	echo -n "Number of lines in code: ">>README.md
	wc -l guessinggame.sh>>README.md

clean:
	rm README.md
