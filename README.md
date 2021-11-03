# HiLO
Drug repositioning has gained widespread attention as an effective strategy to look for new uses for existing drugs. The primary advantage of drug repositioning over traditional drug development is that it can effectively reduce the costs and time among the development and significantly reduce the risk of adverse effects and attrition in the clinical phase. Link prediction via linear optimization(LO) based on homogeneous network is the most recent proposed link prediction method, which has high prediction performance and fast convergence. Homogeneous network greatly simplify our processing procedure for it stripes other information and only cares about the direct links between objects, but it is also prone to loss of information. In this article, we propose a simple and efficient matrix completion method, link prediction in heterogeneous information networks via linear optimization (HiLO), to predict the potential indications for approved and new drugs. 


# Requirements
* Matlab >= 2014

# Installation
HiLO can be downloaded by
```
git clone https://github.com/BioinformaticsCSU/HiLO
```
Installation has been tested in a Windows platform.

# Dataset Description
* Wrname: the DrugBank IDs of drugs;
* Wdname: the OMIM IDs of diseases;
* drug_AtcS: drug's ATC code similarity matrix;
* drug_TargetS: drug's target profile similarity matrix;
* disease_PhS: disease phenotype similarity matrix;
* disease_DoS: disease ontology similarity matrix;
* didr: disease-drug association matrix.

# Functions Description
* ```HiLO.m```: this function can implement the HiLO algorithm;


# Instructions
We provide detailed step-by-step instructions for running HiLO model.

**Step 1**: add datasets\functions paths
```
addpath('Datasets');
addpath('Functions');
```
**Step 2**: load datasets with association matirx and similarity matrices
```
load Fdataset_ms
A_DR = didr;
R = (drug_AtcS+drug_TargetS)/2;
D = (disease_PhS+disease_DoS)/2;
```
**Step 3**: parameter Settings

The hyper-parameters are fixed.
```
alpha = 15; 
beta = 20; 

```

**Step 4**: run the HiLO algorithm
```
A_recovery = HiLO(A_DR',alpha,beta, R, D);
```

# A Quickstart Guide
Users can immediately start playing with HGIMC running ```Demo_HiLO.m``` in matlab.
* ```Demo_HiLO.m```: it demonstrates a process of predicting drug-disease associations on Fdataset_ms by HiLO algorithm.

# Run HiLO on User's Own Data
We provided instructions on implementing HiLO model with user's own data. One could directly run HiLO model in ```Demo_HiLO.m``` with custom data by the following instructions.

**Step 1**: Prepare your own data and add into the ```Datasets``` folder

The required data includes drug-disease association matirx and similarity matrices, which are all saved by ```mat``` files.

**Step 2**: Modify four lines in ```Demo_HiLO.m```

You can find ```Fdataset_ms, A_DR, R, D``` in ```Demo_HiLO.m```. All you need to do is to replace them with your own data.



# Contact
If you have any questions or suggestions with the code, please let us know. 
Contact Kai Zheng at ```kaizheng@csu.edu.cn```
