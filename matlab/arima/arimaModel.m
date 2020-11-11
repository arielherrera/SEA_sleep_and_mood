%%% Author: Ariel Herrera %%%
%%% Date: Nov 4, 2020 %%%
% Here we will be processing and analyzing data to create a simple ARIMA model
% first must construct ACF and PACF plots for each data set (from momWakeups to Fatigue)
% having these ACFs and PACFs will help guide us in determining the order of the 
% AR and MA models needed to construct the ARIMA. 
% If you, as the reader, do not understand what a function is used for, please refer to 
% the mathworks website by googling the function name, they have a vast library and 
% (in my opinion) great documentation. 

wholeTable = readtable('sleepMoodData.xlsx', 'Range', 'B2:M120', 'ReadVariableNames', false);
day = wholeTable(:,1);
date = wholeTable(:,2);
momWakeups = wholeTable(:,3); % TODO: mess around with data, right now it is now stationary
% I am seeing too much variability... consider using ARCH(p) model for this
momTotalNightSleep = wholeTable(:,4);
momSleepQuality = wholeTable(:,5);
babyPickups = wholeTable(:,6); % AR for this does not become zero during whole 20 lags
babyLongestSleep = wholeTable(:,7); % AR for this does not become zero during whole 20 lags
babyTotalNightSleep = wholeTable(:,8); % AR for this does not become zero during whole 20 lags
positiveAffect = wholeTable(:,9); % Interesting AR plots, includes many lags, but does have some as zero
negativeAffect = wholeTable(:,10); % Interesting AR plots, includes many lags, but does have some as zero
sadness = wholeTable(:,11);
fatigue = wholeTable(:,12); % 7 out of 20 lags were zero

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% data is ready to experiment with %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% will begin with ACF and PACF plots for data
% the ACF plot is needed in order to 
% figure out the order of an MA model
% the PACF plot is needed in order to 
% figure out the order of an AR model
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% IMPORTANT: HAVE ONE SCRIPT UNCOMMENTED AT A TIME TO KNOW WHAT
%%%%%%%%%%% YOURE LOOKING AT
%%%%%%%%%%% ***** UNCOMMENT THE SCRIPT YOU'D LIKE TO RUN *****
%%%%%%%%%%% ***** REMEMBER TO HAVE THE SCRIPT IN THIS SAME DIRECTORY *****
%%%%%%%%%%% ***** OR ADD PATH TO THIS FILE OF SCRIPT LOCATION *****
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% generates ACF and PACF for momWakeups and plot for days vs momWakeups
%ACF_PACF_momWakeups; % refer to .m file mentioned for details

% generates ACF and PACF for momTotalNigthSleep and plot for days vs
% momTotalNightSleep
%ACF_PACF_momTotalNightSleep;

% generates ACF and PACF for momSleepQuality and plot for days vs momSleepQuality
%ACF_PACF_momSleepQuality;

% generates ACF and PACF for babyPickups and plot for days vs babyPickups
%ACF_PACF_babyPickups;

% generates ACF and PACF for babyLongestSleep and plot for days vs babyLongestSleep
%ACF_PACF_babyLongestSleep;

% generates ACF and PACF for babyTotalNightSleep and plot for days vs babyTotalNightSleep
%ACF_PACF_babyTotalNightSleep;

% generates ACF and PACF for positiveAffect and plot for days vs positiveAffect
%ACF_PACF_positiveAffect;

% generates ACF and PACF for negativeAffect and plot for days vs negativeAffect
%ACF_PACF_negativeAffect;

% generates ACF and PACF for sadness and plot for days vs sadness
%ACF_PACF_sadness;

% generates ACF and PACF for fatigue and plot for days vs fatigue
%ACF_PACF_fatigue;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% some data is ready to be used in ARIMA %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%% background on what it is and why we chose this to work with %%%%%%% 
% the autoregressive integrateed moving average model (ARIMA) process
% generates nonstationary series that are integrated of order D, denoted
% I(D). A nonstationary I(D) process is one that can be made stationary by
% taking D differences (as seen in ARIMA model video where we get a
% function z of t that is the difference between two adjacent times points 
% from the original times series). 
% The reason why I chose to begin with ARIMA is because, as I assume, if
% there is no need to make the time series stationary (meaning no need to
% take any differences to make the time series stationary) we can set the D
% parametere as D = 0 and have an idential ARMA model instead. This should
% make things a little easier since we're working with diverse data sets.


%%% ARIMA model for momTotalNightSleep %%%
% we saw 3 lags in AR != 0, a slightly increasing mean, and 1 lag in MA
% !=0
mTNSARIMA = arima(3,1,1);


EstmTNSARIMA = estimate(mTNSARIMA,momTotalNightSleep{:,:});
% above we estimate the ARIMA model given an unspecified arima object and the original
% time series we based our arima on. 
% this function estimates parameters of the partially specified
% ARIMA(p,D,q) model mTNSARIMA given the observed univariate time series y
% using maximum likelihood. EstmTNSARIMA is the corresponding fully
% specified ARIMA model that stores the parameter estimates. 

approxARIMA = arima('ARLags', [1 2 8], 'AR', [0.430785 0.19914 0.18334], ...
    'D', 1, 'MALags', 1 , 'MA', 0.431525, 'Constant', 0.044734, 'Variance', 1.1495);

%impulse(approxARIMA, 10);
%Y = simulate(approxARIMA, 119, 'NumPaths', 25);
%plot(Y);
%title('Simulated Paths from Random Walk Process');