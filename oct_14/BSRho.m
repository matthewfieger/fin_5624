function Rho = BSRho(S,K,T,r,vol,q,IsCall)
	% Returns Black Scholes Rho for a European Call or Put Option
	d_1 = (log(S/K)+(r-q+0.5*vol^2)*T)/(vol*sqrt(T));
	d_2 = d_1-vol*sqrt(T);
	if IsCall
		Rho = T*K*exp(-r*T)*normcdf(d_2);
	else
		Rho = -T*K*exp(-r*T)*normcdf(-d_2);
	end