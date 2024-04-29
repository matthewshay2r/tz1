#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input> <output>"
    exit 1
fi

INPUT_director=$1
OUTPUT_director=$2

if [ ! -d "$INPUT_director" ]; then
    echo "Входящая директория не найдена"
    exit 1
fi

if [ ! -d "$OUTPUT_director" ]; then
    echo "Исходящая директория не найдена"
    exit 1
   
fi

find "$INPUT_director" -type f -exec cp {} "$OUTPUT_director" \;