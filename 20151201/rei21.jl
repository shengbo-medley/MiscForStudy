using MLBase
srand(123)
function estfun(ntree, nfeature)
  model = build_forest(y_train, X_train, nfeature, ntree, 0.7)
  return model
end

function evalfun(model, inds)
  pred = apply_forest(model, X_test)
  conf_mat = confusion_matrix(y_test[:, 1], pred[:, 1]).matrix
  prec = conf_mat[2, 2]/sum(conf_mat[:, 2])
  return prec
end

r = gridtune(estfun, evalfun,
  ("ntree", [50, 100]),
  ("nfeature", [5, 10]),
  verbose=true)