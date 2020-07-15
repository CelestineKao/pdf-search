# pdf-search
Script for pulling each line in set of PDFs that contains a matching string from a list of specified strings. Initial use case was being able to quickly pull out rows in tables that contain a match. See [`example/`](https://github.com/CelestineKao/pdf-search/tree/master/example).

## How to use
__Note:__ These instructions are written for MacOS (>= Sierra) and assumes basic command line familiarity 

### Requirements
Assuming you have [`homebrew`](https://brew.sh/) installed, install `pdfgrep`:
```bash
brew install pdfgrep
```
This make take a minute or two.

### Running the script
1. Download [`search_pdfs.sh`](search_pdfs.sh) and put it into the same directory as the PDFs you want to search.
1. `cd` into that directory and run `chmod u+x search-pdfs.sh` to make it executable.
1. Create a text file in the directory called `search_strings.txt`. It should contain all the strings you want to search, one string per line. See the example [`search_strings.txt`](example/search_strings.txt).
1. Run `./search-pdfs.sh`.
1. Once it completes, there should be a new file called `results.txt` in the directory containing all the matched lines. See the example [`results.txt`](example/results.txt).
