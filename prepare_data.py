import pandas as pd
# Google Data
train_df = pd.read_csv("data/train.tsv", sep="\t").astype(str)
val_df = pd.read_csv("data/dev.tsv", sep="\t").astype(str)

# Filter to retain only pairs that are paraphrases
train_df = train_df.loc[train_df["label"] == "1"]
val_df = val_df.loc[val_df["label"] == "1"]

# Renaming columns according to preferences
# train_df = train_df.rename(
#     columns={"sentence1": "input_text", "sentence2": "target_text"}
# )
# val_df = val_df.rename(
#     columns={"sentence1": "input_text", "sentence2": "target_text"}
# )

# Keep only the 2 columns
train_df = train_df[["sentence1", "sentence2"]]
val_df = val_df[["sentence1", "sentence2"]]

train_df.to_csv("data/train.csv", index=False)
val_df.to_csv("data/val.csv",index=False)