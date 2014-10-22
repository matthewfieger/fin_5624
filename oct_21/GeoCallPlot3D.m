% Initial Values
K=30;
r=0.07;
q=0.01;
vol = .30;

RangeS=10:50;
RangeT= 0:0.25:2;
n=length(RangeS);
m=length(RangeT);


z = zeros(m,n);
for i=1:m
	for j=1:n
		S = RangeS(j);
		T = RangeT(i);
		z(i,j) = GeoCall(S,K,r,q,vol,T);
	end
end
mesh(RangeS,RangeT,z);
view(-25,15);
xlabel('Stock Price');
ylabel('Time To Maturity');
zlabel('Option Price');
title('Option Price Sensitivity');
box on;

