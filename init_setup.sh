echo [$(date)]: "START"
echo [$(date)]: "creating environment"
conda create --prefix ./env python=3.7 -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "END"