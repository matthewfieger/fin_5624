% Initial Values
S=30;
K=30;
r=0.07;
q=0.01;
T=1;

% Horizontal Axis
h = @(vol) GeoCall(S,K,r,q,vol,T);
% 2D Plot
[x,y] = fplot(h,[.05 .5]);
plot(x,y,'--r','LineWidth',2);
xlabel('Volatility');
ylabel('Option Price');
title('Option Price Sensitivity');
grid on;

