GHC = ghc
SOURCE = program.hs
OUTPUT = program

all: $(OUTPUT)

$(OUTPUT): $(SOURCE)
	$(GHC) $(SOURCE) -o $(OUTPUT)

clean:
	rm -f $(OUTPUT)
