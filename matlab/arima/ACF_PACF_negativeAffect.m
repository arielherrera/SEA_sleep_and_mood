%%% Author: Ariel Herrera %%%
%%% Date: Nov 7, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for negativeAffect %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = negativeAffect %%%
[negativeAffectACF, negativeAffectACFlags, negativeAffectACFbounds] = autocorr(negativeAffect{:,:});
autocorr(negativeAffect{:,:}); % this syntax means I convert a table to a matrix by accessing the values of the table and thus making "negativeAffect{:,:}" into a matrix, equivalent to function: "table2array"
figure; % makes sure plot doesn't vanish after calling another plot function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% PACF Plot for Y = negativeAffect %%%
[negativeAffectPACF, negativeAffectPACFlags, negativeAffectPACFbounds] = parcorr(negativeAffect{:,:});
parcorr(negativeAffect{:,:});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IDEAS ON HOW TO PROCEED GIVEN ACF AND PACF PLOTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%