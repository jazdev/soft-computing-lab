% Script to make a MLP network for solving logical XOR problem
%
% Soft Computing Lab (8th semester)
%
% Date: 3/3/2014
%
% Author: Jasdev Singh

clc;
clear all;
close all;

x = [0 0 1 1; 0 1 0 1];

t = [0 1 1 0];  

net = newff(minmax(x), [10 1], {'logsig' 'logsig'}, 'traingdx');

[net, tr] = train(net, x, t);

outputs = sim(net, x);

errors = t - outputs;

perf = perform(net, outputs, t);

