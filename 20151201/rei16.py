from sklearn import grid_search as gs
from sklearn.metrics import classification_report
from sklearn import preprocessing
from sklearn import svm

param_grid = [
     {'C': [0.5, 1], 'gamma': [0.05, 0.1]}
    ]

svc = svm.SVC()
clf = gs.GridSearchCV(svc, param_grid, cv=10)
clf.fit(X_train, y_train)

