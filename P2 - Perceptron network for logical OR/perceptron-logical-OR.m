% Script to make a Perceptron network for solving logical OR problem
%
% Soft Computing Lab (8th semester)
%
% Date: 24/2/2014
%
% Author: Jasdev Singh

clc;
clear all;
close all;

nnstart %open neural network GUI

x = [0 1 0 1 0 1 0 1; 0 0 1 1 0 0 1 1; 0 0 0 0 1 1 1 1]; % input vector

t = [0 1 1 1 1 1 1 1]; % target vector for 3-input OR gate

net = perceptron; 

net = train(net, x, t); % start training the network

net.trainParam.epochs = 7; % 7 iterations

view(net)

y = net(x);

