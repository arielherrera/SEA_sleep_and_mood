%%% Author: Ariel Herrera %%%
%%% Date: Nov 7, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for positiveAffect %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = positiveAffect %%%
[positiveAffectACF, positiveAffectACFlags, positiveAffectACFbounds] = autocorr(positiveAffect{:,:});
autocorr(positiveAffect{:,:}); % this syntax means I convert a table to a matrix by accessing the values of the table and thus making "positiveAffect{:,:}" into a matrix, equivalent to function: "table2array"
figure; % makes sure plot doesn't vanish after calling another plot function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% PACF Plot for Y = positiveAffect %%%
[positiveAffectPACF, positiveAffectPACFlags, positiveAffectPACFbounds] = parcorr(positiveAffect{:,:});
parcorr(positiveAffect{:,:});
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IDEAS ON HOW TO PROCEED GIVEN ACF AND PACF PLOTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% X = day, Y = positiveAffect Plot %%%%%%%%%%%%%%%%%%

plot(day{:,:},positiveAffect{:,:});
title('ACF');
xlabel('days');
ylabel('positiveAffect')