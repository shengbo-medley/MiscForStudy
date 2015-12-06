from sklearn import svm
from sklearn import metrics
from sklearn.metrics import classification_report
clf = svm.SVC()
clf.fit(X_train, y_train)
pred = clf.predict(X_test)
print(metrics.classification_report(y_test, pred,target_names=['no','yes']))
