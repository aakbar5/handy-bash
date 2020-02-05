#!/bin/bash

echo "-------------------------------------------------"
echo "File validation"
echo ""

# -e can be used to check existence of a file or directory
[[ -e "/path/to/folder" ]] && echo "Directory is there" || echo "Directory is not there"
[[ -e "/path/to/folder/file" ]] && echo "File is there" || echo "File is not there"

# -f can be only be used to check existence of a file
[[ -f "/path/to/folder" ]] && echo "Directory is there" || echo "Directory is not there"
[[ -f "/path/to/folder/file" ]] && echo "File is there" || echo "File is not there"

# Use -d for directory
[[ -d "/path/to/folder" ]] && echo "Directory is there" || echo "Directory is not there"
[[ -d "/path/to/folder/file" ]] && echo "File is there" || echo "File is not there"

[[ -r "/path/to/folder/file" ]] && echo "File is readable" || echo "File is not readable"
[[ -w "/path/to/folder/file" ]] && echo "File is writable" || echo "File is not writable"
[[ -x "/path/to/folder/file" ]] && echo "File is executable" || echo "File is not executable"
[[ -s "/path/to/folder/file" ]] && echo "File size >0 bytes" || echo "File size is of 0 bytes"

[[ -h "/path/to/folder/file" ]] && echo "File is symblink" || echo "File is not symlink"

[[ "/path/to/f1" -nt "/path/to/f2" ]] && echo "f1 is more recent than f2"
[[ "/path/to/f1" -ot "/path/to/f2" ]] && echo "f2 is more recent than 1"
[[ "/path/to/f1" -ef "/path/to/f2" ]] && echo "f1 & f2 are the same files"
