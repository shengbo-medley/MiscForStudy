import numpy as np
from sklearn.cross_validation import train_test_split
bank = pd.read_csv("bank-full.csv", sep=";")
bank.head(3)

features, label = makefeature(bank.drop('y', 1)), bank.y
random_state = np.random.RandomState(123)
X_train, X_test, y_train, y_test = train_test_split(features, label, test_size=.3, random_state=random_state)

