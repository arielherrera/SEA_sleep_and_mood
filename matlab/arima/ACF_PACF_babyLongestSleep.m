%%% Author: Ariel Herrera %%%
%%% Date: Nov 7, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for babyLongestSleep %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = babyLongestSleep %%%
[babyLongestSleepACF, babyLongestSleepACFlags, babyLongestSleepACFbounds] = autocorr(babyLongestSleep{:,:});
autocorr(babyLongestSleep{:,:}); % this syntax means I convert a table to a matrix by accessing the values of the table and thus making "babyLongestSleep{:,:}" into a matrix, equivalent to function: "table2array"
figure; % makes sure plot doesn't vanish after calling another plot function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% PACF Plot for Y = babyLongestSleep %%%
[babyLongestSleepPACF, babyLongestSleepPACFlags, babyLongestSleepPACFbounds] = parcorr(babyLongestSleep{:,:});
parcorr(babyLongestSleep{:,:});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IDEAS ON HOW TO PROCEED GIVEN ACF AND PACF PLOTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%