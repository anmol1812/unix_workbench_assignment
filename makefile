all: README.md

README.md:
	echo '# Unix Workbench Assignment' > README.md
	echo '* This Make file was ran at: $(shell date +%Y-%m-%d:%H:%M:%S)' >> README.md
	echo '* Shell script have $(shell wc -l < guessinggame.sh) lines and name of the file is guessinggame.sh' >> README.md
    

