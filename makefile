README.md:
	touch README.md
	echo "Title: Guessing Game" >> README.md
	echo "Date: " >> README.md
	date "+%A %Y %X" >> README.md
	echo "Lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
