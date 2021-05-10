[![Website monip.org](https://img.shields.io/website-up-down-green-red/http/monip.org.svg)](https://sevimcengiz.github.io/)
[![Documentation Status](https://readthedocs.org/projects/ansicolortags/badge/?version=latest)](https://sevimcengiz.github.io/oryx/)
![Open Source? Yes!](https://badgen.net/badge/Open%20Source%20%3F/Yes%21/blue?icon=github)
[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://github.com/sevimcengiz)
# IRIS-MRS-AI
<img src="https://user-images.githubusercontent.com/5468765/108315274-9c0c7680-71d4-11eb-9040-7e6248ea55b8.png" width="100" height="100">
IRIS-MRS-AI is the tool that classifies IDH and TERTp mutations in gliomas using MR Spectroscopy and Mass Spectrometry data. Besides these features, IRIS-MRS-AI is a tool that capable to create new models using users own data. Users can customize the tool to use on their field. IRIS-MRS-AI has 2 main modules that are Advanced User and Normal User module. For further information please read the documentation.

# Features
-  
 
   a. Five different models on MRS data.
 
   b. Four different models on MS data.
 
   c. Plotting tools for visualizing.
   
   d. Trainer module on custom data.
   
   e. 17 machine learning algorithms ready to use.
   
   f. 5 different feature selection methods.
   
   g. CRLB thresholding. 
   
   h. 1 synthetic data generator.
   
   i. 2 validation methods.
   
   j. Summary reporting of experiment in raw (xlsx,txt) and processed in pdf.
   
   k. Paper quality figure exporting.
   
   l. Manipulating nearly every components of figure. (Dont need photoshop or similar third party tools)
   
   m. Classifier module (Using custom models)
   
   n. Standalone distributions on Mac, Linux, and Windows. (Can be used on MATLAB simply by cloning this repo.)

-

- ```ROI Analysis``` Region of interest (ROI) analysis at multiple brain atlases like [Schafer2018 100/400 Parcels on 7 resting-state (rs-fMRI) networks](https://pubmed.ncbi.nlm.nih.gov/28981612/) or [MNI thr 0/25/50 brain regions](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/Atlases). 


# Prerequirements
- [MATLAB R2020b](https://www.fil.ion.ucl.ac.uk/spm/software/download/)
- [FSL](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FSL) for FLIRT 
- [SPM12](https://www.fil.ion.ucl.ac.uk/spm/software/download/)
- [GUI Layout Toolbox](https://www.mathworks.com/matlabcentral/fileexchange/47982-gui-layout-toolbox)
- [Widgets Toolbox](https://www.mathworks.com/matlabcentral/fileexchange/66235-widgets-toolbox-compatibility-support)
- IRIS-MRS-AI is tested on Ubuntu 20.04 LTS (	Intel Core i7-8750H, @2.2GHzx12 32 GB 2133 MHz DDR4, Graphics GeForce RTX 2070 Super) , Ubuntu 18.04.4 LTS (Memory 32GIB, Processor Intel Core i7-9800X CPU @3.8GHzx16, Graphics GeForce RTX 2070/PCle/SSE2)
and Windows (İntel Core i5-6700 HQ, @2.6Ghzx6 8GB Graphics GeForce GTX950M)

# Installation
For installation please download releases from this repo. There are 3 distributions and their v0.1 for that moment.

For using on MATLAB please download this repo and add all folders and subfolders to the current path. Then execute iris.m

For any problem please check the program log and then report it to the issues. 

# How to get started and User Documentation
[Oryx-MRSI Documentation](https://sevimcengiz.github.io/oryx/)

# Developers

Abdullah Bas

Banu Saçlı

Gökçe Hale Hatay

Sevim Cengiz

Esin Ozturk Isik

Should you publish material that made use of IRIS-MRS-AI, please cite the following publication:

**Bas A, Sacli-Bilmez B, Hatay GH, Ozcan A, Levi C, Danyeli AE, Can O, Yakicier C, Pamir MN, Ozduman K, Dincer A, Ozturk-Isik E. Glioma Genetic Diagnosis Software for Detection of IDH and TERTp Mutations based on 1H MR Spectroscopy and Mass Spectrometry. International Society for Magnetic Resonance in Medicine. Vancouver, Canada May 15-20, 2021**

# Release
- Version 1.0

# Help and Support
- There isn't known any bug or issue up to now. 
- If you see any bug or issue, please  submit a topic in issues, or contact: abdullahbas@boun.edu.tr
-

# License
- MIT License

# Acknowledgement
- This project was funded by TUBITAK 216S432. We thank all open-source MR and MRS tools. 
- IRIS-MRS-AI uses some functions of [FID-A](https://github.com/CIC-methods/FID-A), check [this link](https://github.com/CIC-methods/FID-A/blob/master/LICENSE.txt) for license.
-
- If there is any function that I forget to mention about name/link/citation, please let me know.

