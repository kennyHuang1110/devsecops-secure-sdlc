#!/bin/bash

BUILD_ID=${1:-"secure-sdlc-demo"}

mkdir -p reports/fortify

echo "[*] Running Fortify SAST scan"

echo "[*] Clean previous build"
sourceanalyzer -b "$BUILD_ID" -clean

echo "[*] Translate source code"
sourceanalyzer -b "$BUILD_ID" app/

echo "[*] Scan source code"
sourceanalyzer -b "$BUILD_ID" -scan -f reports/fortify/fortify-report.fpr

echo "[*] Fortify scan completed"
