#!/bin/bash
#miniconda
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# chmod +x Miniconda3-latest-Linux-x86_64.sh
# ./Miniconda3-latest-Linux-x86_64.sh
# echo "Need to restart ternimal"
# exit

conda create -n pytorch17 -c conda-forge python=3.8
conda activate pytorch17
conda install  numpy pyyaml mkl mkl-include setuptools cmake cffi typing -y

conda install pytorch=1.7.1 torchvision torchaudio cudatoolkit=11.1 -c pytorch -c=conda-forge -y
pip install pytorch-lightning
conda install -c conda-forge imgaug ipywidgets albumentations -y

# ##aux
conda install -c anaconda nltk -y
conda install -c anaconda pandas pyarrow numpy matplotlib tqdm seaborn plotly scikit-learn graphviz tabulate -y
conda install -c conda-forge imbalance-learn -y
conda install -c conda-forge swifter -y
conda install -c conda-forge easydict jmespath -y
conda install -c conda-forge black autopep8 flake8 pylint -y
conda install nodejs -y
conda install -c conda-forge jupyter jupyterlab ipywidgets jupyter_contrib_nbextensions  jupyter_nbextensions_configurator jupytext -y
conda install -c conda-forge jupyterlab_code_formatter jupyterlab-git -y
python -m ipykernel install --user --name pytorch17_py38 --display-name "pytorch17_py38"
jupyter serverextension enable --py jupyterlab_code_formatter
jupyter labextension install jupyterlab-plotly plotlywidget

# ##DNN packages
# ##   pytorch related
mkdir ~/Softwares
cd ~/Softwares/
git clone https://github.com/ryujaehun/pytorch-gpu-benchmark.git
cd ~/

conda install -c conda-forge tensorboardx -y
conda install -c conda-forge transformers -y
pip install seqeval
pip install wandb
pip install simpletransformers
# pip install fast-bert
pip install torchtext spacy
conda install -c conda-forge beautifulsoup4 requests lxml -y

pip install ttach
pip install efficientnet_pytorch segmentation_models
pip install timm
