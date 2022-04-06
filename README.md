# LRTM
Motivation: Molecular interactions are central to most biological processes. The discovery and identification of potential associations between molecules can provide insights into biological exploration, diagnostic and therapeutic interventions, and drug development. So far many relevant computational methods have been proposed, but most of them are usually limited to specific domains and rely on complex preprocessing procedures, which restricts the models’ ability to be applied to other tasks. Therefore, it remains a challenge to explore a generalized approach to accurately predicting potential associations. Results: In this study, We propose Left-Right Transition Matrices (LRTM) for link prediction in molecular bipartite networks. From the perspective on the diffusion model, we construct two transition matrices to model undirected graph information propagation. This allows modeling the transition probabilities of links, which facilitates link prediction in molecular bipartite networks. The extensive experimental results show that the proposed LRTM algorithm performs better than the compared methods in link prediction. Also, the proposed algorithm has the potential for cross-task prediction. Furthermore, case studies show that LRTM is a powerful tool that can be effectively applied to practical applications.


# Requirements
* Matlab >= 2014

# Installation
LRTM can be downloaded by
```
git clone https://github.com/BioinformaticsCSU/LRTM
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
* ```LRTM.m```: this function can implement the LRTM algorithm;


# Instructions
We provide detailed step-by-step instructions for running LRTM model.

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

**Step 4**: run the LRTM algorithm
```
A_recovery = LRTM(A_DR',alpha,beta, R, D);
```

# A Quickstart Guide
Users can immediately start playing with LRTM running ```Demo_LRTM.m``` in matlab.
* ```Demo_LRTM.m```: it demonstrates a process of predicting drug-disease associations on Fdataset_ms by LRTM algorithm.

# Run LRTM on User's Own Data
We provided instructions on implementing LRTM model with user's own data. One could directly run LRTM model in ```Demo_LRTM.m``` with custom data by the following instructions.

**Step 1**: Prepare your own data and add into the ```Datasets``` folder

The required data includes drug-disease association matirx and similarity matrices, which are all saved by ```mat``` files.

**Step 2**: Modify four lines in ```Demo_LRTM.m```

You can find ```Fdataset_ms, A_DR, R, D``` in ```Demo_LRTM.m```. All you need to do is to replace them with your own data.



# Contact
If you have any questions or suggestions with the code, please let us know. 
Contact Kai Zheng at ```kaizheng@csu.edu.cn```
