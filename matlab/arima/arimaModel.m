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
babyPickups = wholeTable(:,6);
babyLongestSleep = wholeTable(:,7);
babyTotalNightSleep = wholeTable(:,8);
positiveAffect = wholeTable(:,9);
negativeAffect = wholeTable(:,10);
sadness = wholeTable(:,11);
fatigue = wholeTable(:,12);

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% generates ACF and PACF for momWakeups
ACF_PACF_momWakeups; % refer to .m file mentioned for details

% generates ACF and PACF for momTotalNigthSleep
ACF_PACF_momTotalNightSleep; % refer to .m file mentioned for details