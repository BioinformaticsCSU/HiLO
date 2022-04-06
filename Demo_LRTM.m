clear all
addpath('Datasets');
addpath('Functions');
%% 1. Load Datesets
load Fdataset_ms
A_DR = didr;
R = (drug_AtcS+drug_TargetS)/2;
D = (disease_PhS+disease_DoS)/2;

%% 2. LRTM algorithm
alpha = 15; 
beta = 20; 
A_recovery = LRTM(A_DR',alpha,beta, R, D);


