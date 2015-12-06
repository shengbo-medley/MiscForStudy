using DecisionTree
using MLBase
srand(123)

function trainfun(inds)
  model = bunild_forest(y_train[inds, 1], X_train[inds, :], 10, 100, 0.7)
  return model
end
function evalfun(model, inds)
  pred = apply_forest(model, X_train[inds, :])
  conf_mat = confusion_matrix(y_train[inds, 1], pred).matrix
  prec = conf_mat[2, 2]/sum(conf_mat[:, 2])
  return prec
end

const N_tr = size(X_train, 1)
scores = cross_validate(
  inds -> trainfun(inds),
  (model, inds) -> evalfun(model, setdiff(1:N_tr, inds))
  N_tr,
  StratifiedKfold(y_train, 10))