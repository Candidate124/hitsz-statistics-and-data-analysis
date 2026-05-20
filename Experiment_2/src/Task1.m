clear; clc; close all;

% binomial distribution
p = 0.5;
n = 10;
k_binomial = 0:n;
P_binomial = binopdf(k_binomial, n, p);
subplot(3, 1, 1);
bar(k_binomial, P_binomial, 'FaceColor', [0.2 0.6 0.8], 'EdgeColor', 'k');
xlabel('k');
ylabel('P(X = k)');
title('Binomial Distribution: n = 10, p = 0.5');
grid on;

% Poisson distribution
lambda = 5;
k_Poisson = 0:15;
P_Poisson = poisspdf(k_Poisson, lambda);
subplot(3, 1, 2);
bar(k_Poisson, P_Poisson, 'FaceColor', [0.2 0.6 0.8], 'EdgeColor', 'k');
xlabel('k');
ylabel('P(X = k)');
title('Poisson Distribution: λ = 5');
grid on;

% normal distribution
mu = 0;
sigma = 1;
x = -4:0.1:4;
f = normpdf(x, mu, sigma);
subplot(3, 1, 3);
plot(x, f, 'r-');
xlabel('x');
ylabel('f(X)');
title('Normal Distribution: μ = 0, σ = 1');
grid on;