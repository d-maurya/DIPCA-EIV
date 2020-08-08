% This is a demo file to show the working of DIPCA algorithm. If you are
% using this code, please cite our following papers: 
% 1) Identification of Linear Dynamic Systems using Dynamic Iterative Principal Component Analysis, 
%    Deepak Maurya, Arun K. Tangirala, Shankar Narasimhan, 2016, IFAC-PapersOnLine, 49(7), pp.1014-19.
%    Link: www.sciencedirect.com/science/article/pii/S2405896316305420
% 2) Identification of Errors-in-Variables models using dynamic iterative principal component analysis,
%    Deepak Maurya, Arun K. Tangirala, Shankar Narasimhan, 2018, Industrial & Engineering Chemistry Research, 57(35), pp.11939-54
%    Link: https://pubs.acs.org/doi/abs/10.1021/acs.iecr.8b01374
% 
% Some of the other closely related works can be found on https://d-maurya.github.io/web/
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% We have given a readme.txt file to show the use of dipca function. You can type
% the following command to get the documentation in Matlab: 
% 1) doc dipca_ref
% 2) help dipca_ref

%% Data Generation part
% sample size
N = 2^10-1; 

% noise-free input
uk = idinput(N,'prbs',[0 1],[-1 1]);

% noise-free output
% LTI system : y[k] - 0.5y[k-1] = 2u[k-1]
y(1) = 0; % unit delay
for i =2:N
    y(i) = 0.5*y(i-1)+ 2*uk(i-1);
end

noise_free = [y',uk]; 
z = noise_free ; % noise-free output and input data

variance = var(noise_free);

% Noise addition
SNR = 10; % signal to noise ratio
n1 = normrnd(0,sqrt(variance(1)/SNR),N,1);
n2 = normrnd(0,sqrt(variance(2)/SNR),N,1);

n = [n1 n2];

zn = noise_free +n ; % noisy data ready which is supplied to the algorithm


%% Estimation of the EIV system 
L = 3; % stacking order L (some random stacking order.) Please note L >= so + 1 for identifiability
eta_guess = 1; % maximum of input and output order (correct guess)
[noise_var,eigval_f,out_par,inp_par] = dipca(zn,L,eta_guess)

%% the output of the code be something like: 
% noise_var =
% 
%     0.4215    0.1065
% 
% 
% eigval_f =
% 
%     0.9957    1.0007    1.0036   10.4666   12.6984   15.8474   20.1926   34.2044
% 
% 
% out_par =
% 
%     1.0000   -0.4941
% 
% 
% inp_par =
% 
%     0.0008    2.0009

% It can be clearly see that the estimated parameters are close to the true
% values. 

%% We can supply the incorrect guess of eta_guess and let the number of
% unity eigenvalues tell us if the guess is incorrect. 


