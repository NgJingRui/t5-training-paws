#!/bin/bash
python --version
pip --version
python3 --version
pip install --upgrade pip

pip install torch==1.7.0
pip install transformers==2.9.0
pip install pytorch_lightning==0.7.5
pip install numpy
pip install pandas
pip install tqdm
pip install nltk

mkdir output
mkdir lightning_logs
mkdir models
cd models
mkdir train_t5_small_small
cd ..

python3 train_t5_small_small.py

cd models
cd train_t5_small_small
mv config.json artifacts/
mv pytorch_model.bin artifacts/