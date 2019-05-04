classification_error = function(fitted, actual) {
  return(mean(fitted!=actual))
}
CVgeneric = function(classifier, features, labels, K, loss_func=classification_acc) {
  set.seed(1)
  folds <- createFolds(labels, k = K)
  CVerrors = data.frame(matrix(ncol = 0, nrow = 1))
  for (i in 1:K) {
    fold_index = folds[[paste("Fold", i, sep="")]]
    cv = features[fold_index, ]
    train_set = features[-fold_index, ]
    predicted = predict(classifier, newdata=cv)
    pe_index = paste("Fold", i, sep="")
    CVerrors[pe_index] = loss_func(predicted, labels)
  }
  return(CVerrors)
}