# DIPCA-EIV
This repo contains the implementation of dynamic iterative PCA proposed for identification of a system where the input and output measurements are corrupted with Gaussian white noise. The algorithm estimates the following:
1) Input-output orders and delay of the transfer function
2) Input-output noise variances 
3) The coefficients of difference equation. 

If you are using this code, please cite the following papers: 

- `Identification of Errors-in-Variables models using dynamic iterative principal component analysis`, **Deepak Maurya**, Arun K. Tangirala, Shankar Narasimhan, 2018, Industrial & Engineering Chemistry Research, 57(35), pp.11939-54. <a href="https://pubs.acs.org/doi/abs/10.1021/acs.iecr.8b01374">[Paper]</a>    <br>
- `Identification of Linear Dynamic Systems using Dynamic Iterative Principal Component Analysis`, **Deepak Maurya**, Arun K. Tangirala, Shankar Narasimhan, 2016, IFAC-PapersOnLine, 49(7), pp.1014-19.<a href="https://www.sciencedirect.com/science/article/pii/S2405896316305420">[Paper]</a>   <br>

The above papers discuss the identification algorithm. You may refer our following paper if you are interested in performing residual analysis for any EIV system:

- `Optimal Filtering and Residual Analysis in Errors-in-variables Model Identification`, Vipul Mann, **Deepak Maurya**, Arun K. Tangirala, Shankar Narasimhan, 2020, Industrial & Engineering Chemistry Research, 59(5), pp.1953-65 <a href="https://pubs.acs.org/doi/10.1021/acs.iecr.9b04561">[Paper]</a> <br>
