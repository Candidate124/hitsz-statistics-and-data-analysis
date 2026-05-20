clear; clc; close all;

% a) Bank Call Center Problem
lambda_a = 20;
N_a = 1000;
A_a = poissrnd(lambda_a, [N_a, 1]);
event_a = (A_a > 25);
count_a = sum(event_a);
P_a = count_a / N_a;
disp('a) Bank Call Center Problem');
fprintf('1000 hours: Probability = %.4f\n', P_a);
% increase to 100000 hours
N_a_increased = 100000;
A_a_increased = poissrnd(lambda_a, [N_a_increased, 1]);
event_increased = (A_a_increased > 25);
count_a = sum(event_increased);
P_a_increased = count_a / N_a_increased;
disp('Comparison:');
fprintf('100000 hours: Probability = %.4f\n\n', P_a_increased);

% b) Cumulative Call Count Problem
lambda_b = 20;
nHours = 5;
N_b = 100000;
A_b = poissrnd(lambda_b, [N_b, nHours]);
S4 = sum(A_b(:,1:4), 2);
S5 = sum(A_b, 2);
event_b = (S4 < 100) & (S5 >= 100);
count_b = sum(event_b);
P_b = count_b / N_b;
disp('b) Cumulative Call Count Problem');
fprintf('Probability: %.4f\n\n', P_b);

% c) Measurement Stability Problem
a = 0;
b = 2;
N_c = 100000;
X = a + (b - a) * rand(N_c, 1);
Y = a + (b - a) * rand(N_c, 1);
D = abs(X - Y);
event_c = (D < 0.3);
count_c = sum(event_c);
P_c = count_c / N_c;
disp('c) Measurement Stability Problem');
fprintf('Probability = %.4f\n\n', P_c);

% d) Product Quality Inspection Problem
p_d = 0.01;
n_d = 200;
N_d = 100000;
X_d_1 = binornd(n_d, p_d, [N_d, 1]);
reject_d_1 = (X_d_1 > 3);
X_d_2 = binornd(n_d, p_d, [N_d, 1]);
total_defects = X_d_1 + X_d_2;
accept = (X_d_1 <= 3) & (total_defects <= 5);
count_d = sum(accept);
P_d = count_d / N_d;
disp('d) Product Quality Inspection Problem');
fprintf('Probability =%.4f\n', P_d);