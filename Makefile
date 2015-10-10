.DEFAULT_GOAL := all

PRO = OpenBloxClient.pro

ifeq ($(OS),Windows_NT)
	QMAKE = C:\Qt\5.4\mingw491_32\bin\qmake.exe
else
	QMAKE = qmake
endif

rc:
	./genrc.sh

clean:
	rm -fr QtMakefile QtMakefile.Debug QtMakefile.Release debug release openblox OpenBlox.exe

QtMakefile:	rc
	$(QMAKE) -o QtMakefile $(PRO) CONFIG+=debug_and_release

debug:	QtMakefile
	$(MAKE) -j 2 -f QtMakefile debug

release:	QtMakefile
	$(MAKE) -j 2 -f QtMakefile release

all:	QtMakefile
	$(MAKE) -j 2 -f QtMakefile

docs: doxygen

.PHONY: all clean debug release QtMakefile docs rc
