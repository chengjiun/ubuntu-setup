#!/bin/bash
#miniconda
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# chmod +x Miniconda3-latest-Linux-x86_64.sh
# ./Miniconda3-latest-Linux-x86_64.sh
# echo "Need to restart ternimal"
# exit

# conda create -n dl python=3.7
conda activate tf2

# ##aux
conda install jsonlines
conda install -c anaconda pandas pyarrow numpy matplotlib tqdm seaborn plotly scikit-learn graphviz -y
conda install -c conda-forge swifter -y
conda install -c conda-forge easydict jmespath -y
conda install -c conda-forge black autopep8 flake8 pylint -y
conda install nodejs -y
conda install -c conda-forge jupyter jupyterlab ipywidgets jupyter_contrib_nbextensions jupyter_nbextensions_configurator jupytext -y
conda install -c conda-forge jupyterlab_code_formatter jupyterlab-git -y
conda install -c conda-forge pandas-profiling -y
python -m ipykernel install --user --name tf2 --display-name "tf2-py37"
jupyter serverextension enable --py jupyterlab_code_formatter
jupyter labextension install jupyterlab-plotly plotlywidget

# ##TF2
conda install -y -c anaconda tensorflow-gpu
conda install -c conda-forge tensorboardx -y
