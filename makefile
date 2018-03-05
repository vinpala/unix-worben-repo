all:README.md


README.md:
	echo "Project Title                   :  Guessing Game" >> README.md
	echo "Run Date and Time               :  $(shell date +%Y-%m-%d:%H:%M:%S)" >> README.md
	echo "No. of lines in guessinggame.sh :  $(shell wc -l < guessinggame.sh)" >> README.md
