%%% Author: Ariel Herrera %%%
%%% Date: Nov 4, 2020 %%%
% Here we will be processing and analyzing data to create a simple AR model

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