#!/bin/bash
python --version
pip --version
python3 --version
pip install --upgrade pip
pip install -r requirements.txt
pip install torch==1.4.0
python3 train_t5_small_small.py