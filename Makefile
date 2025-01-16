EXE = Manchesser-United
ifeq ($(OS),Windows_NT)
	SRC := ManchesserUnited.Uci.exe
	DEST := $(EXE).exe
else
	SRC := ManchesserUnited.Uci
	DEST := $(EXE)
endif

all:
	dotnet publish -c Release ManchesserUnited.Uci/ --output ManchesserUnited.Uci/bin/OpenbenchBin
	mv BManchesserUnited.Uci/bin/OpenbenchBin/$(SRC) ./$(DEST)
