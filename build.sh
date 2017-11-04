#!/bin/bash
wget https://raw.githubusercontent.com/txt2tags/txt2tags/080e3143eea50c8a77eac03b87723858aa3a0035/txt2tags
chmod 755 txt2tags

for testfile in comment.t2t image.t2t inline.t2t line.t2t link.t2t list.t2t paragraph.t2t quote.t2t table.t2t test.conf title.t2t verbatim.t2t; do
    wget -P English/rules https://raw.githubusercontent.com/txt2tags/txt2tags/master/test/marks/$testfile
done

wget -P English/rules https://raw.githubusercontent.com/txt2tags/txt2tags/master/test/macro/syntax.t2t

sleep 10

for file in */*.t2t; do
    ./txt2tags $file
done
