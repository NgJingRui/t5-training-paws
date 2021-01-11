# t5-training-paws

## Steps
1. Initialize and activate virtual environment
    * `virtualenv .env`
    * `source .env/bin/activate` 
2. Install required libraries via `pip install -r requirements.txt`
3. Download PAWs Dataset via `sh download.sh` or `bash download.sh`
4. Process PAWs Dataset into .csv form via `python prepare_data.py`
    * At this point, you should have "train.csv" and "val.csv" in data
5. 