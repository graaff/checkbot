#! /bin/bash

echo -n "Cleaning out old files in website..."
rm ${HOME}/projects/web-pages/degraaff.org/checkbot/*
echo "done."
echo -n "Creating updated manual..."
pod2html --infile checkbot.pl --outfile checkbot.pl.html --htmlroot /checkbot/
echo "done."
echo -n "Copy files to website..."
cp index.html style.css ChangeLog TODO checkbot.pl.html checkbot*.tar.gz ${HOME}/projects/web-pages/degraaff.org/checkbot/
echo "done."
echo -n "Copy most recent check to website..."
cp checkbot.html checkbot.css checkbot-*.html ${HOME}/projects/web-pages/degraaff.org/checkbot/
echo "done."
