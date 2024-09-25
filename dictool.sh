#!/usr/bin/env bash

STARDICT_URL=https://stardict-4.sourceforge.net/HowToCreateDictionary
STARDICT="StarDict-$(echo "$STARDICT_URL" | cut -d"/" -f4).txt"

if [ ! -f "$STARDICT" ]; then
	curl -fLo "$STARDICT" "$STARDICT_URL"
fi

CEDICT_URL_BASE=https://www.mdbg.net/chinese/export/cedict
CEDICT_GZ=cedict_1_0_ts_utf-8_mdbg.txt.gz
CEDICT_U8=${CEDICT_GZ::-3}

if [ ! -f "$CEDICT_U8" ]; then
	curl -fLO "$CEDICT_URL_BASE/$CEDICT_GZ"
	gunzip "$CEDICT_GZ"
fi
