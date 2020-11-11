%%% Author: Ariel Herrera %%%
%%% Date: Nov 7, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for sadness %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = sadness %%%
[sadnessACF, sadnessACFlags, sadnessACFbounds] = autocorr(sadness{:,:});
autocorr(sadness{:,:}); % this syntax means I convert a table to a matrix by accessing the values of the table and thus making "sadness{:,:}" into a matrix, equivalent to function: "table2array"
figure; % makes sure plot doesn't vanish after calling another plot function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% PACF Plot for Y = sadness %%%
[sadnessPACF, sadnessPACFlags, sadnessPACFbounds] = parcorr(sadness{:,:});
parcorr(sadness{:,:});
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IDEAS ON HOW TO PROCEED GIVEN ACF AND PACF PLOTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% X = day, Y = sadness Plot %%%%%%%%%%%%%%%%%%

plot(day{:,:},sadness{:,:});
title('ACF');
xlabel('days');
ylabel('sadness')