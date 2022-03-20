[![Website monip.org](https://img.shields.io/website-down-red/http/monip.org.svg)]()
[![Documentation Status](https://readthedocs.org/projects/ansicolortags/badge/?version=latest)]()
![Open Source? Yes!](https://badgen.net/badge/Open%20Source%20%3F/Yes%21/blue?icon=github)
[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://github.com/abdullahbas)
# IRIS-MRS-AI
IRIS-MRS-AI is the tool that classifies IDH and TERTp mutations in gliomas using MR Spectroscopy and Mass Spectrometry data. Besides these features, IRIS-MRS-AI is a tool that capable to create new models using users own data. Users can customize the tool to use on their field. IRIS-MRS-AI has 2 main modules that are Advanced User and Normal User module. For further information please read the documentation.


# Features

 
- Five different models on MRS data.
 
- Four different models on MS data.
 
- Plotting tools for visualizing.
   
- Trainer module on custom data.
   
- 17 machine learning algorithms ready to use.
   
- 5 different feature selection methods.
   
- CRLB thresholding. 
   
- 1 synthetic data generator.
   
- 2 validation methods.
   
- Summary reporting of experiment in raw (xlsx,txt) and processed in pdf.
   
- Paper quality figure exporting.
   
- Manipulating nearly every components of figure. (Dont need photoshop or similar third party tools)
   
- Classifier module (Using custom models)
   
- Standalone distributions on Mac, Linux, and Windows. (Can be used on MATLAB simply by cloning this repo.)





# Prerequirements
- [MATLAB R2020b/a](https://www.fil.ion.ucl.ac.uk/spm/software/download/) (Not required for complied distributions. Only for using on MATLAB)

- IRIS-MRS-AI is tested on Ubuntu 20.04 LTS (	Intel Core i7-8750H, @2.2GHzx12 32 GB 2133 MHz DDR4, Graphics GeForce RTX 2070 Super) , Ubuntu 18.04.4 LTS (Memory 32GIB, Processor Intel Core i7-9800X CPU @3.8GHzx16, Graphics GeForce RTX 2070/PCle/SSE2)
and Windows (İntel Core i5-6700 HQ, @2.6Ghzx6 8GB Graphics GeForce GTX950M)

# Installation
For installation please download releases from this repo. There are 3 distributions and their v0.1 for that moment.

For using on MATLAB please download this repo and add all folders and subfolders to the current path. Then execute iris.m

For Linux please run run_IRIS.sh path/to/installed/mrr/that/you/specified/in/installing

For any problem please check the program log and then report it to the issues. 

# How to get started and User Documentation
- [IRIS-MRS-AI Documentation](https://github.com/Computational-Imaging-LAB/IRIS-MRS-AI/blob/main/IRIS_Manual.pdf)

- [IRIS-MRS-AI Manual](https://github.com/Computational-Imaging-LAB/IRIS-MRS-AI/blob/main/IRIS_Manual.pdf)

# Developers

Abdullah Bas

Banu Saçlı

Gökçe Hale Hatay

Sevim Cengiz

Esin Ozturk Isik

Should you publish material that made use of IRIS-MRS-AI, please cite the following publication:

**Bas A, Sacli-Bilmez B, Hatay GH, Ozcan A, Levi C, Danyeli AE, Can O, Yakicier C, Pamir MN, Ozduman K, Dincer A, Ozturk-Isik E. Glioma Genetic Diagnosis Software for Detection of IDH and TERTp Mutations based on 1H MR Spectroscopy and Mass Spectrometry. International Society for Magnetic Resonance in Medicine. Vancouver, Canada May 15-20, 2021**

# Release
- Version 0.1
- Version 0.2 (Only for standalone Windows)

# Help and Support
- There isn't known any bug or issue up to now. 
- If you see any bug or issue, please  submit a topic in issues, or contact: abdullahbas@boun.edu.tr


# License
- MIT License

# Acknowledgement
- This project was funded by TUBITAK 216S432. We thank all open-source MR and MRS tools. 
- IRIS-MRS-AI uses some functions of [FID-A](https://github.com/CIC-methods/FID-A), check [this link](https://github.com/CIC-methods/FID-A/blob/master/LICENSE.txt) for license.
- If there is any function that I forget to mention about name/link/citation, please let me know.

