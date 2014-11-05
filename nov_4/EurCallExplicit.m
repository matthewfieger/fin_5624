function Price = EurCallExplicit(S,K,r,T,sigma,q,Smax,dS,N)
M = round(Smax/dS);
dt = T/N;
FiniteMesh = zeros(M+1,N+1);
StockGrid = linspace(0,Smax,M+1);
% Boundary condition at T and 0
FiniteMesh(:,N+1)=max(StockGrid - K,0); % @ Expiration
Expire = N:-1:0;
FiniteMesh(1,:)=0; % @ S=0
FiniteMesh(M+1,:)=S*exp(-q*dt*Expire) - K*exp(-r*dt*Expire); % @ S_max
% Coefficients
step = 0:M;
a=0.5*dt*(sigma^2*step - (r-q)).*step;
b=1 - dt*(sigma^2*step.^2 + r);
c=0.5*dt*(sigma^2*step + (r-q)).*step;
% Solve Backwards
for j = N+1: -1 : 2
    for i = 2:M
        FiniteMesh(i,j-1)=a(i)*FiniteMesh(i-1,j)+ b(i)*FiniteMesh(i,j)+c(i)*FiniteMesh(i+1,j);
    end
end
Price = interp1(StockGrid,FiniteMesh(:,1),S);
