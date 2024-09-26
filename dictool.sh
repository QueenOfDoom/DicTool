#!/usr/bin/env bash

DIRECTORY="build"
if [ ! -d "$DIRECTORY" ]; then
	mkdir -p "$DIRECTORY"
fi

CEDICT_URL_BASE=https://www.mdbg.net/chinese/export/cedict
CEDICT_GZ=cedict_1_0_ts_utf-8_mdbg.txt.gz
CEDICT_U8=${CEDICT_GZ::-3}

if [ ! -f "$DIRECTORY/$CEDICT_U8" ]; then
	curl -fL "$CEDICT_URL_BASE/$CEDICT_GZ" -o "$DIRECTORY/$CEDICT_GZ"
	gunzip "$DIRECTORY/$CEDICT_GZ"
fi

awk -f cedict_to_mdict.awk "$DIRECTORY/$CEDICT_U8"
