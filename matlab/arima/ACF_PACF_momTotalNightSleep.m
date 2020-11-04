%%% Author: Ariel Herrera %%%
%%% Date: Nov 4, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for momTotalNightSleep %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = momWakeups %%%
[momTotalNightSleepACF, momTotalNightSleepACFlags, momTotalNightSleepACFbounds] = autocorr(momWakeups{:,:});
autocorr(momTotalNightSleep{:,:}); % this variable is from arimaModel.m, since we 
% use this script after that variable is declared in the parent script, we
% can use it without issue
figure; % makes sure plot doesn't vanish after calling another plot function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% given that the acf plot shuts off (turn to 0) after some lag momTotalNightSleepACFlags, 
% this tells us that it IS a good fit for an MA(q) model. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% PACF Plot for Y = momWakeups %%%
[momTotalNightSleepPACF, momTotalNightSleepPACFlags, momTotalNightSleepPACFbounds] = parcorr(momWakeups{:,:});
parcorr(momTotalNightSleep{:,:});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% given that the pacf plot does shut off (turn to 0) after some lag
% momTotalNightSleepPACFlags, this tell us that it is a good fit for an AR(q) model.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This ACF and PACF look promising for the momTotalNightSleep data array
% will have to run AR and MA models next!!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%