#!/usr/bin/env bash
# File: guessinggame.sh

echo "Type your guess about how many files are in the current directory and then press Enter:"
read guess
nfile=$(ls -l| wc -l)
if []
