import numpy as np
from sklearn import ensemble
from sklearn import metrics
from sklearn.metrics import classification_report
random_state = np.random.RandomState(123)
clf = ensemble.RandomForestClassifier(n_estimators=500, random_state=random_state)
clf.fit(X_train, y_train)

pred = clf.predict(X_test)
print(metrics.classification_report(y_test, pred, target_names=['no', 'yes']))
