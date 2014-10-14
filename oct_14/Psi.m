function Psi = BSPsi(S,K,T,r,vol,q,IsCall)
	% Returns Black Scholes Psi for a European Call or Put Option
	d_1 = (log(S/K)+(r-q+0.5*vol^2)*T)/(vol*sqrt(T));
	if IsCall
		Psi = -T*S*exp(-r*T)*normcdf(d_1);
	else
		Rho = T*S*exp(-r*T)*normcdf(-d_1);
	end