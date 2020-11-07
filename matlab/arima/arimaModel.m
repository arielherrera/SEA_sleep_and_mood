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

% generates ACF and PACF for momWakeups
%ACF_PACF_momWakeups; % refer to .m file mentioned for details

% generates ACF and PACF for momTotalNigthSleep
%ACF_PACF_momTotalNightSleep;

% generates ACF and PACF for momTotalNigthSleep
%ACF_PACF_momSleepQuality;

% generates ACF and PACF for momTotalNigthSleep
%ACF_PACF_babyPickups;

% generates ACF and PACF for momTotalNigthSleep
%ACF_PACF_babyLongestSleep;

% generates ACF and PACF for momTotalNigthSleep
%ACF_PACF_babyTotalNightSleep;

% generates ACF and PACF for momTotalNigthSleep
%ACF_PACF_positiveAffect;

% generates ACF and PACF for momTotalNigthSleep
%ACF_PACF_negativeAffect;

% generates ACF and PACF for momTotalNigthSleep
%ACF_PACF_sadness;

% generates ACF and PACF for momTotalNigthSleep
%ACF_PACF_fatigue;