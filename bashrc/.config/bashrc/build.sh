#!/bin/bash
# Builds my .bashrc file from the files in .config/bashrc

cat ~/.config/bashrc/setup > ~/.bashrc
echo 'File set up'
cat ~/.config/bashrc/exports >> ~/.bashrc
echo 'Exports added'
cat ~/.config/bashrc/aliases >> ~/.bashrc
echo 'Aliases added'
cat ~/.config/bashrc/functions >> ~/.bashrc
echo 'Functions added'
echo 'All done, enjoy!'
