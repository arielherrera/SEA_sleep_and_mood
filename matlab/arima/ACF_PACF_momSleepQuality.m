%%% Author: Ariel Herrera %%%
%%% Date: Nov 7, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for momSleepQuality %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = momSleepQuality %%%
[momSleepQualityACF, momSleepQualitylags, momSleepQualitybounds] = autocorr(momSleepQuality{:,:});
autocorr(momSleepQuality{:,:}); % this syntax means I convert a table to a matrix by accessing the values of the table and thus making "momSleepQuality{:,:}" into a matrix, equivalent to function: "table2array"
figure; % makes sure plot doesn't vanish after calling another plot function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% PACF Plot for Y = momSleepQuality %%%
[momSleepQualityPACF, momSleepQualityPACFlags, momSleepQualityPACFbounds] = parcorr(momSleepQuality{:,:});
parcorr(momSleepQuality{:,:});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IDEAS ON HOW TO PROCEED GIVEN ACF AND PACF PLOTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%