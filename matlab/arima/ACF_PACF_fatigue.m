%%% Author: Ariel Herrera %%%
%%% Date: Nov 7, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for fatigue %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = fatigue %%%
[fatigueACF, fatigueACFlags, fatigueACFbounds] = autocorr(fatigue{:,:});
autocorr(fatigue{:,:}); % this syntax means I convert a table to a matrix by accessing the values of the table and thus making "fatigue{:,:}" into a matrix, equivalent to function: "table2array"
figure; % makes sure plot doesn't vanish after calling another plot function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% PACF Plot for Y = fatigue %%%
[fatiguePACF, fatiguePACFlags, fatiguePACFbounds] = parcorr(fatigue{:,:});
parcorr(fatigue{:,:});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IDEAS ON HOW TO PROCEED GIVEN ACF AND PACF PLOTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%