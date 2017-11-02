#!/bin/bash
wget https://raw.githubusercontent.com/txt2tags/txt2tags/080e3143eea50c8a77eac03b87723858aa3a0035/txt2tags
chmod 755 txt2tags

for file in */*.t2t; do
    ./txt2tags $file
done
