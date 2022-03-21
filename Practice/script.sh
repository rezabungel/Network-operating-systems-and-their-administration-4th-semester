#!/bin/bash

echo "start"

touch file1
dd if=/dev/urandom of=file1 bs=1024 count=1000
base64 file1 > file2

echo "finish"
