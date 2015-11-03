function J = computeCost(X, y, theta)
  m = length(y);
  J = 0;
  J = 1 / (2.0 * m) * (X * theta - y)' * (X * theta - y);
end
