% Args
K=50;
r=0.05;
vol=0.20;
q=0.02;
IsCall=1;

RangeS=10:90;
RangeT= 0:0.25:3;
n=length(RangeS);
m=length(RangeT);

% Plot Results 0-6 from BlackScholes.m
% Z-axis: Transition through Results

ChangeLabel = {
	'Price'
	'Delta (per $)'
	'Gamma (per $ per $)'
	'Vega (per %)'
	'Theta (per day)'
	'Rho (per basis point)'
	'Psi (per %)'
};

z = zeros(m,n);
	for Result = 0:6
		for i=1:m
			for j=1:n
				S = RangeS(j);
				T = RangeT(i);
				z(i,j)=BlackScholes(S,K,T,r,vol,q,IsCall,Result);
			end
		end
		mesh(RangeS,RangeT,z);
		view(-25,15);
		xlabel('Stock Price');
		ylabel('Time To Maturity');
		zlabel(ChangeLabel(Result+1));
		title('Option Price Sensitivity');
		box on;
		% Press any key to advance to the next plot
		if (Result < 6), pause, end
	end