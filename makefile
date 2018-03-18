all: README.md

README.md: guessinggame.sh
	echo "The Guessing Game" > README.md
	echo >> README.md 
	echo "Make was run at: $(shell date)" >> README.md
	echo -n "The Guessing Game is written in bash with " >> README.md
	echo "$(shell wc -l guessinggame.sh | egrep -o "[0-9]+") lines of code" >> README.md
# The $(shel ...) could have been replaced with backquotes.
# e.g. $(shell data) becomes just `data`

clean:
	rm README.md
