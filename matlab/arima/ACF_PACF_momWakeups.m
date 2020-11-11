%%% Author: Ariel Herrera %%%
%%% Date: Nov 4, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for momWakeups %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = momWakeups %%%
[momWakeupsACF, momWakeupsACFlags, momWakeupsACFbounds] = autocorr(momWakeups{:,:});
autocorr(momWakeups{:,:}); % this syntax means I convert a table to a matrix by accessing the values of the table and thus making "momWakeups{:,:}" into a matrix, equivalent to function: "table2array"
figure; % makes sure plot doesn't vanish after calling another plot function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% given that the acf plot does not shut off (turn to 0) after some lag q, 
% this tells us that it is NOT a good fit for an MA(q) model. 
% will have to further process this "momWakeups" data array to
% work with it.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% PACF Plot for Y = momWakeups %%%
[momWakeupsPACF, momWakeupsPACFlags, momWakeupsPACFbounds] = parcorr(momWakeups{:,:});
parcorr(momWakeups{:,:});
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% given that the pacf plot does shut off (turn to 0) after some lag
% PACFlags, this tell us that it is a good fit for an AR(q) model.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% X = day, Y = momWakeups Plot %%%%%%%%%%%%%%%%%%

plot(day{:,:},momWakeups{:,:});
title('ACF');
xlabel('days');
ylabel('momWakeups')