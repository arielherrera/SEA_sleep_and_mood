%%% Author: Ariel Herrera %%%
%%% Date: Nov 4, 2020 %%%

%%%%%%%%%%%%%%%%%% ACF and PACF for momWakeups %%%%%%%%%%%%%%%%%%

%%% ACF Plot for Y = momWakeups %%%
[momWakeupsACF, momWakeupsACFlags, momWakeupsACFbounds] = autocorr(momWakeups{:,:});
autocorr(momWakeups{:,:});
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% given that the pacf plot does shut off (turn to 0) after some lag
% PACFlags, this tell us that it is a good fit for an AR(q) model.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%