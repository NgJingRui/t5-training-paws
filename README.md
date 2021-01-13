# t5-training-paws

## Steps
1. Initialize and activate virtual environment
    * If using virtualenv:
        * `virtualenv .env`
        * `source .env/bin/activate` 
    * If using conda:
        * `conda create --name .env
        * `conda activate .env`
        * `conda install python==3.6.6 pandas numpy tqdm`
2. Install required libraries via `pip install -r requirements.txt`
3. Download PAWs Dataset via `sh download.sh` or `bash download.sh`
4. Process PAWs Dataset into .csv form via `python prepare_data.py`
    * At this point, you should have "train.csv" and "val.csv" in data
5. Create necessary directories:
    * `mkdir output`
    * `mkdir models`
    * `mkdir lightning_logs` (May not be necessary) 
6. Create a folder to store your trained model
    * `cd models`
    * `mkdir <model name>`
    * `cd ..`
7. Run python program to train model
    * `python train_t5_base_full_gpu1.py`
        * Training t5-base model using full dataset on 1x GPU