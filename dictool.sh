#!/usr/bin/env bash

DIRECTORY="build"
if [ ! -d "$DIRECTORY" ]; then
	mkdir -p "$DIRECTORY"
fi

STARDICT_URL=https://stardict-4.sourceforge.net/HowToCreateDictionary
STARDICT="StarDict-$(echo "$STARDICT_URL" | cut -d"/" -f4).txt"

if [ ! -f "$DIRECTORY/$STARDICT" ]; then
	curl -fLo "$DIRECTORY/$STARDICT" "$STARDICT_URL"
fi

CEDICT_URL_BASE=https://www.mdbg.net/chinese/export/cedict
CEDICT_GZ=cedict_1_0_ts_utf-8_mdbg.txt.gz
CEDICT_U8=${CEDICT_GZ::-3}

if [ ! -f "$DIRECTORY/$CEDICT_U8" ]; then
	curl -fL "$CEDICT_URL_BASE/$CEDICT_GZ" -o "$DIRECTORY/$CEDICT_GZ"
	gunzip "$DIRECTORY/$CEDICT_GZ"
fi
