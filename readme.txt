
This code can be downloaded from https://github.com/d-maurya/DIPCA-EIV
and codes for other closely related works can be found on https://d-maurya.github.io/web/
 
We provide the documentation here but please refer the demo.m file to
understand the usage of this function. We have also provided a readme.txt
file to understand the usage and working of this function. You can type
the following command to get the documentation in Matlab: 
1) doc dipca_ref
2) help dipca_ref
 
This function requires the following inputs:
Inputs: 1) zn: This is a matrix of dimension Nx2 with 1st and 2nd column
               being output and input variable respectively. 
        2) L : This is a scalar. 
               It denotes the lag or stacking order up to which you would like
               to stack the lagged inputs and outputs variable. Please note that
               chose L should be greater than order of difference equation + 1
               for identifiability. 
        3) eta_guess: It is a scalar.
               It denotes the guessed system order 
 
It returns the following variables: 
Outputs: 1) noise_var: This is a 1x2 vector. 
                      noise_var(1,1) is the estimated output noise variance and 
                      noise_var(1,2) is the estimated input noise variance
        2) eigval_f : This is a 1x(2*(L+1)) vector consisting of the
                      eigenvalues in ascending order, where L is supplied 
                      in inputs to this function. 
                      The eigenvalues can be used to estimate the order
                      of difference equation using eta = L-d+1, where d is the number of unity eigenvalues. 
                      The first few eigenvalues are expected to be unity.
                      For example, if you supply L = eta_guess+1, you will get 2
                      unity eigenvalues, where eta_guess is the system order (Assumed to be unknown). 
                      If you supply L = eta_guess+2, you will get 3 unity
                      eigenvalues. Hence the number of unity eigenvalues
                      can be used to detect the system order - eta_guess. Refer
                      an example in the demo file for more information. 
        3) out_par : this is a vector of dimension 1x(L+1). 
                     It contains the coefficients of lagged output variables in the difference equation
                     in the form [a_0 a_1 a_2 ... a_{L}], where we
                     normalize a_0 = 1. a_i is the coefficient of y[k-i]
        4) inp_par : this is a vector of dimension 1x(L+1). 
                     It contains the coefficients of lagged input variables in the difference equation
                     in the form [b_0 b_1 b_2 ... b_{L}]. 
                     b_i is the coefficient of u[k-i]
 
You can use the following papers for more reference. Please cite them if
you are using this code and feel free to contact the first author if you
have any doubts.
1) Identification of Linear Dynamic Systems using Dynamic Iterative Principal Component Analysis, 
   Deepak Maurya, Arun K. Tangirala, Shankar Narasimhan, 2016, IFAC-PapersOnLine, 49(7), pp.1014-19.
   Link: https://www.sciencedirect.com/science/article/pii/S2405896316305420
2) Identification of Errors-in-Variables models using dynamic iterative principal component analysis,
   Deepak Maurya, Arun K. Tangirala, Shankar Narasimhan, 2018, Industrial & Engineering Chemistry Research, 57(35), pp.11939-54
   Link: https://pubs.acs.org/doi/abs/10.1021/acs.iecr.8b01374

