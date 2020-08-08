# DIPCA-EIV
This repo contains the implementation of dynamic iterative PCA proposed for identification of a system where the input and output measurements are corrupted with Gaussian white noise. The algorithm estimates the following:
1) Input-output orders and delay of the transfer function
2) Input-output noise variances 
3) The coefficients of difference equation. 

For more inofrmation, please refer <a href="https://www.sciencedirect.com/science/article/pii/S2405896316305420"> DIPCA Ref 1</a> or <a href="https://pubs.acs.org/doi/abs/10.1021/acs.iecr.8b01374"> DIPCA Ref 2</a>. If you are using this code, please cite the following papers using: 

1. @article{dipca_full2018,
  title={Identification of Errors-in-Variables models using dynamic iterative principal component analysis},
  author={Maurya, Deepak and Tangirala, Arun K and Narasimhan, Shankar},
  journal={Industrial \& Engineering Chemistry Research},
  volume={57},
  number={35},
  pages={11939--11954},
  year={2018},
  publisher={ACS Publications}
}

2. @article{dipca_2016,
  title={Identification of Linear Dynamic Systems using Dynamic Iterative Principal Component Analysis},
  author={Maurya, Deepak and Tangirala, Arun K and Narasimhan, Shankar},
  journal={IFAC-PapersOnLine},
  volume={49},
  number={7},
  pages={1014--1019},
  year={2016},
  publisher={Elsevier}
}
