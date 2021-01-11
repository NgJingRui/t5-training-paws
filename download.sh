#!/bin/bash
mkdir data
mkdir output
mkdir train_t5_small
wget https://storage.googleapis.com/paws/english/paws_wiki_labeled_final.tar.gz -P data
tar -xvf data/paws_wiki_labeled_final.tar.gz -C data
mv data/final/* data
rm -r data/final