%%% Author: Ariel Herrera %%%
%%% Date: Nov 7, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for babyPickups %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = babyPickups %%%
[babyPickupsACF, babyPickupsACFlags, babyPickupsACFbounds] = autocorr(babyPickups{:,:});
autocorr(babyPickups{:,:}); % this syntax means I convert a table to a matrix by accessing the values of the table and thus making "babyPickups{:,:}" into a matrix, equivalent to function: "table2array"
figure; % makes sure plot doesn't vanish after calling another plot function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% PACF Plot for Y = babyPickups %%%
[babyPickupsPACF, babyPickupsPACFlags, babyPickupsPACFbounds] = parcorr(babyPickups{:,:});
parcorr(babyPickups{:,:});
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILL IN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IDEAS ON HOW TO PROCEED GIVEN ACF AND PACF PLOTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% X = day, Y = babyPickups Plot %%%%%%%%%%%%%%%%%%

plot(day{:,:},babyPickups{:,:});
title('ACF');
xlabel('days');
ylabel('babyPickups')