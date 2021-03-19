conda create -n rapids-0.18 -c rapidsai -c nvidia -c conda-forge \
            -c defaults rapids-blazing=0.18 python=3.7 cudatoolkit=11.0
conda activate rapids-0.18

conda install jsonlines
conda install -c anaconda pandas pyarrow numpy matplotlib tqdm seaborn plotly scikit-learn graphviz -y
conda install -c conda-forge swifter -y
conda install -c conda-forge easydict jmespath -y
conda install -c conda-forge black autopep8 flake8 pylint -y
conda install nodejs -y
conda install -c conda-forge jupyter jupyterlab ipywidgets
jupyter_contrib_nbextensions jupyter_nbextensions_configurator jupytext    -y
conda install -c conda-forge jupyterlab_code_formatter jupyterlab-git        -y
conda install -c conda-forge pandas-profiling -y

conda install -c conda-forge ngboost xgboost catboost lightgbm -y
conda install requests -y
python -m ipykernel install --user --name py38_rapids --display-name "rapids with Python3.8"
