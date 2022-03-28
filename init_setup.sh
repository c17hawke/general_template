echo [$(date)]: "START"
export _VERSION_=3.7
echo [$(date)]: "creating environment with python ${_VERSION_}"
conda create --prefix ./env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
# echo [$(date)]: "export conda environment"
# conda env export > conda.yaml
echo [$(date)]: "create an src directory"
mkdir src && touch src/__init__.py src/main.py
# echo [$(date)]: "initialize git repository"
# git init
echo [$(date)]: "Curl .gitignore for python"
curl https://raw.githubusercontent.com/c17hawke/Pytorch-basics/main/.gitignore > .gitignore
# echo [$(date)]: "add env to gitignore"
# echo "env/" >> .gitignore

# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/
