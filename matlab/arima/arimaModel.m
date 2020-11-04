%%% Author: Ariel Herrera %%%
% Here we will be processing and analyzing data to create a simple AR model

wholeTable = readtable('sleepMoodData.xlsx', 'Range', 'B2:M120', 'ReadVariableNames', false);
day = wholeTable(:,1);
date = wholeTable(:,2);

momWakeups = wholeTable(:,3);
momTotalNightSleep = wholeTable(:,4);
momSleepQuality = wholeTable(:,5);

babyPickups = wholeTable(:,6);
babyLongestSleep = wholeTable(:,7);
babyTotalNightSleep = wholeTable(:,8);

positiveAffect = wholeTable(:,9);
negativeAffect = wholeTable(:,10);
sadness = wholeTable(:,11);
fatigue = wholeTable(:,12);

% data is ready to work with



