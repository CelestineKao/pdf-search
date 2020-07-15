#!/bin/bash

# Get all the pdf filenames in the current directory and clean them
FILES=$(find . -type f -name "*.pdf" |  sed 's/\.\///')

# Check if the results file exists, and if so, delete and recreate it.
touch results.txt && rm results.txt && touch results.txt

for FILE in ${FILES[@]}; do
  pdfgrep --file search_strings.txt "$FILE" | tr -d  > tmp.txt
  if [ -s tmp.txt ]; then
    echo "" >> results.txt
    echo "$FILE" >> results.txt
    echo "------------------------------------------" >> results.txt
    echo "" >> results.txt
    cat tmp.txt >> results.txt
  else  
    echo "No matches found in $FILE"
  fi
done

# Delete the temporary file
rm tmp.txt
