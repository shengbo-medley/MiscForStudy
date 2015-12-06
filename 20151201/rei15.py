from sklearn import cross_validation as cv
from sklearn.metrics import classification_report
from sklearn import preprocessing
from sklearn import svm

skf = cv.StratifiedKFold(y_train, 10)
for train, test in skf:
    print("%s %s" % (train, test))

clf = svm.SVC()
lb = preprocessing.LabelBinarizer()
y_train_bin = lb.fit_transform(y_train).ravel()
cv.cross_val_score(clf, X_train, y_train_bin, cv=skf, scoring='f1')
pred = cv.cross_val_predict(clf, X_train, y_train, cv=skf)
print(classification_report(y_train, pred, target_names=['no', 'yes']))
