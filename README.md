# imedic-tools

This gem provides command-line tools for converting Japanese input dictionary word-list files between common formats.

## Features

- **ATOK support**: Reads and writes ATOK word-list text files
- **MS-IME support**: Reads and writes modern Microsoft IME word-list files with a Unicode header, UTF-16LE BOM, and CRLF line endings
- **Kotoeri output**: Generates UTF-8 CSV files for Kotoeri-compatible import workflows
- **Comment preservation**: Converts comments between ATOK and MS-IME comment syntax
- **Multiple input files**: Accepts one or more input files and writes a combined dictionary to standard output

## Installation

Install the gem from RubyGems:

```sh
gem install imedic-tools
```

The scripts under `exe/` can also be used standalone without installing the gem.

## Usage

This gem includes three tools:

- `atok2msime`: Converts ATOK word-list files to Microsoft IME format
- `msime2atok`: Converts Microsoft IME word-list files to ATOK format
- `atok2kotoeri`: Converts ATOK word-list files to Kotoeri CSV format

Usage is common to all tools:

```sh
atok2msime < input.atok.txt > output.msime.txt
atok2msime input1.atok.txt input2.atok.txt > output.msime.txt
```

Each tool accepts one or more input files, or standard input when no file is given, and writes the converted word list to standard output.

## ATOK Input Format

Input files are expected to be ATOK word-list text files:

```text
!!ATOK_TANGO_TEXT_HEADER_1
!! Optional comment

よみ	単語	名詞*
```

The tools read UTF-8 files and UTF-8/UTF-16 files with a BOM.

## License

This project is distributed under the 2-clause BSD license.
