MAKE_DATE:=$(shell date)
LINES_IN_SCRIPT=$(shell wc -l guessinggame.sh | awk '{ print $$1 }')

all: README.md

README.md:
	echo "# Bash, Make, Git, and GitHub project: guessinggame\n\n" > README.md
	echo "The date and time at which **make** was run: $(MAKE_DATE) \n" >> README.md
	echo "The number of lines of code contained in **guessinggame.sh**: $(LINES_IN_SCRIPT) \n" >> README.md

clean:
	rm README.md
