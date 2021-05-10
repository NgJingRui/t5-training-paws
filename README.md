# t5-training-paws
I have performed my training of the T5 Model on Paperspace's P6000 instance with 30GB ram. 

To perform the training of my T5 model, I ran the cells shown in "Paperspace Notebook.ipynb".

## Steps
You may follow the steps below, or run "Paperspace Notebook.ipynb"
1. Initialize and activate virtual environment
    * If using virtualenv:
        * `virtualenv .env`
        * `source .env/bin/activate` 
        * `pip install --upgrade pip`
            * pip-21.0.1 was used.
2. Install required libraries via `pip install -r requirements.txt`
3. **[Optional]** If you do not have `q_test.csv` and `q_train.csv` in "./data" folder, then you may need to use the "Preparing QQP Dataset .ipynb"
4. Create necessary directories:
    * `mkdir models`
    * `cd models`
    * `mkdir train_t5_base_full_gpu1_QQP`
        * This will be the folder where your model will be saved to
    * `cd ..`
    * `mkdir output`
    * `mkdir lightning_logs` (May not be necessary) 
5. Run python program to train model
    * `python train_t5_base_full_gpu1_QQP.py`
        * Training t5-base model using full QQP dataset on 1x GPU
        * You will need to have 1 GPU. 