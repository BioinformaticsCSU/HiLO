clear all
addpath('Datasets');
addpath('Functions');
%% 1. Load Datesets
load Fdataset_ms
A_DR = didr;
R = (drug_AtcS+drug_TargetS)/2;
D = (disease_PhS+disease_DoS)/2;

%% 2. HGIMC algorithm
alpha = 15; 
beta = 20; 


% 2.3 Heterogeneous Graph Inference 
A_recovery = HiLO(A_DR',alpha,beta, R, D);


