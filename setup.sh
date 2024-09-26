#!/usr/bin/env bash

# TODO: Check if GoldenDict is installed!

function download_if_not_exists {
	if [ "$#" -ne 2 ]; then
		echo "=== Internal Developer Error ==="
		echo "Error: There are 2 mandatory arguments for this function."
		echo "Usage: download_if_not_exists <url> <path>"
	fi
	local url="$1"
	local path="$2"
	local dir="$(dirname "${path}")"

	mkdir -p "${dir}"
	if [ ! -f "$path" ]; then
		echo "$url"
		curl -fLo "$path" "$url"
	fi
}

DICTIONARY_DIR=./dictionaries
MORPHOLOGY_DIR="${DICTIONARY_DIR}/morphology"

RAW_GITHUB="https://raw.githubusercontent.com"
MORPHOLOGY_DICT_REPO="${RAW_GITHUB}/MrCorn0-0/hunspell_ja_JP/refs/heads/master"
MORPHOLOGY_AFF="ja_JP.aff"
MORPHOLOGY_DIC="ja_JP.dic"

download_if_not_exists "${MORPHOLOGY_DICT_REPO}/${MORPHOLOGY_AFF}" "${MORPHOLOGY_DIR}/Hunspell-${MORPHOLOGY_AFF}"
download_if_not_exists "${MORPHOLOGY_DICT_REPO}/${MORPHOLOGY_DIC}" "${MORPHOLOGY_DIR}/Hunspell-${MORPHOLOGY_DIC}"
