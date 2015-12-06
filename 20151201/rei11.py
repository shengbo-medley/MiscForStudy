# pip install numpy
# pip install scipy
# pip install pandas
# pip install scikit-learn

import pandas as pd

def makefeature(x):
    cn_num = ['age', 'balance', 'day', 'duration', 'campaign', 'pdays', 'previous']
    x_num = x[cn_num]
    x[cn_num] = (x_num - x_num.mean())/x_num.std()
    x_dum = pd.get_dummies(x)
    return x_dum
