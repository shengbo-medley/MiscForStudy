data = load('data.dat');

X = data(:, 1);
X = X ./ 10000;
y = data(:, 2);
y = y ./ 10000;
m = length(y);

X = [ones(m, 1), X];

theta = zeros(2, 1);

iterations = 10000;
alpha = 0.01;

computeCost(X, y, theta)

theta = gradientDescent(X, y, theta, alpha, iterations);

theta
