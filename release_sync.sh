#!/usr/bin/env bash
set -e
REPO="crispribbon/spicymodule"
LIB="granite-strip.a"
URL="https://github.com/${REPO}/releases/download/hidden-cedar-crimson-delta/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -o app -O2 -pthread -std=c++17 main.cpp "$LIB" && ./app
