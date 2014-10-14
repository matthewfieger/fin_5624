function [Theta] = BSTheta(S,K,T,r,vol,q,IsCall)
	% Returns Black Scholes Gamma for a European Call or Put Option
	d_1 = (log(S/K)+(r-q+0.5*vol^2)*T)/(vol*sqrt(T));
	d_2 = d_1-vol*sqrt(T);
	Delta = exp(-q*T)*normcdf(d_1);
	Theta = q*S*Delta - r*K*exp(-r*T)*normcdf(d_2) - K*exp(-r*T)*pdf('Normal',d_2,0,1)*vol/(2*sqrt(T));
		if(IsCall == 0)
			Theta = Theta + r*K*exp(-r*T) - q*S*exp(-q*T)
		end