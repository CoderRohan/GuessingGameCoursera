all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# guessingGameCoursera" > README.md
	echo $$(date) >> README.md
	echo "  \n" >> README.md
	echo "No of lines: " >>README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
