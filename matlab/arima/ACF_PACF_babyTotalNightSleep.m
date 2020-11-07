%%% Author: Ariel Herrera %%%
%%% Date: Nov 7, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for babyTotalNightSleep %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = babyTotalNightSleep %%%
[babyTotalNightSleepACF, babyTotalNightSleepACFlags, babyTotalNightSleepACFbounds] = autocorr(babyTotalNightSleep{:,:});
autocorr(babyTotalNightSleep{:,:}); % this syntax means I convert a table to a matrix by accessing the values of the table and thus making "babyTotalNightSleep{:,:}" into a matrix, equivalent to function: "table2array"
figure; % makes sure plot doesn't vanish after calling another plot function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% PACF Plot for Y = babyTotalNightSleep %%%
[babyTotalNightSleepPACF, babyTotalNightSleepPACFlags, babyTotalNightSleepPACFbounds] = parcorr(babyTotalNightSleep{:,:});
parcorr(babyTotalNightSleep{:,:});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IDEAS ON HOW TO PROCEED GIVEN ACF AND PACF PLOTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%