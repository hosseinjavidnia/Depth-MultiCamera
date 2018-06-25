# Total Variation-Based Dense Depth from Multi-Camera Array
This repository contains the code for the method presented in the following paper:

**Hossein Javidnia, Peter Corcoran, "Total variation-based dense depth from multicamera array," Optical Engineering 57(6), 063105 (20 June 2018). https://doi.org/10.1117/1.OE.57.6.063105.**

\
The code is written and compiled in MATLAB R2017a x64.
To run the code please follow these instructions:


## Code
The initial depth map is estimated using [cocolib](http://cocolib.net/) lightfield library. After installing this library you can estimate the depth from lightfield using EPI2 method. Note that, this library can be replaced with any other methods to initiate the algorithm by providing an initial depth map.

After estimting the initial depth map, you can use the "Run.m" file in MATLAB to apply the refinement.
For the demo case, we put one depth sample in the "Data" folder to be refined using the regularization method.


## Data
The data used in the paper is from [4D Light Field Benchmark](http://hci-lightfield.iwr.uni-heidelberg.de/) of HCI, Heidelberg University and University of Konstanz.
The evaluation in the paper is also performed using the provided [Evaluation Toolkit](https://github.com/lightfield-analysis/evaluation-toolkit) by the dataset. 

\
Please cite the following papers when you are using this code:

**Hossein Javidnia, Peter Corcoran, "Total variation-based dense depth from multicamera array," Optical Engineering 57(6), 063105 (20 June 2018). https://doi.org/10.1117/1.OE.57.6.063105.**
