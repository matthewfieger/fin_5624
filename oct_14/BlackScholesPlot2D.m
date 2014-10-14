% Initial Values
S=50;
K=50;
T=1;
r=0.05;
vol=0.20;
q=0.02;
IsCall=1;

ChangeLabel = {
	'Price'
	'Delta (per $)'
	'Gamma (per $ per $)'
	'Vega (per %)'
	'Theta (per day)'
	'Rho (per basis point)'
	'Psi (per %)'
};

for Result = 0:6
	% Horizontal Axis
	h = @(S) BlackScholes(S,K,T,r,vol,q,IsCall,Result);
	% 2D Plot
	[x,y] = fplot(h,[10 90]);
	plot(x,y,'--r','LineWidth',2);
	xlabel('Stock Price');
	ylabel(ChangeLabel(Result+1));
	title('Option Price Sensitivity');
	grid on;
	% Press any key to advance to the next plot
	if (Result < 6), pause, end
end
