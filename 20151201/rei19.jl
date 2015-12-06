using DecisionTree
srand(123)

fit_rf = build_forest(y_train, X_train, 10, 100, 0.7)
fit_rf

inds_test = setdiff(1:N, inds_train)
X_test = convert(Array, bank[inds_test, 1:16])
y_train = convert(Array, bank[inds_train, :y])
pred = apply_forest(fit_rf, X_test)

conf_mat = confusion_matrix(pred, y_test)
conf_mat

conf_mat = conf_mat.matrix

prec = conf_mat[2, 2]/sum[conf_mat[2,:]]

prec
rec = conf_mat[2, 2]/sum

f_value = 2 * prec * rec / (prec * rec)
f_value

acc = sum(diag(conf_mat))/sum(conf_mat)
acc