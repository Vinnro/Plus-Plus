# Plus-Plus

This project implements a set of functions for converting a dictionary record structure to and from XML format in C++. The structure of a dictionary record includes the following fields:

- `word` (string, up to 20 characters)
- `meaning` (string, arbitrary length)
- `emphasis` (integer, corresponding to the number of stressed vowel in the word)

## Features

- Convert a dictionary record to an XML string.
- Convert an XML string to a dictionary record.
- Overloaded functions to handle different input types (null-terminated string, character array, `std::string`).

## Requirements

- C++20 or higher
- CMake for build automation
- GoogleTest for testing
- Doxygen for documentation generation

## Installation

Clone the repository and build the project using CMake:

```bash
git clone https://github.com/Vinnro/Plus-Plus.git
cd dictionary_project
mkdir build
cd build
cmake ..
make
