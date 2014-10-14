FIN 5624 - Numerical Methods - Fall 2014
========================================

October 14 Assignemnt
====================
	>> BlackScholes(50,50,1,.05,.2,0.02,1,0)

	Price

	ans =

		4.6135

	>> BlackScholes(50,50,1,.05,.2,0.02,1,1)

	Delta

	ans =

		0.5869

	>> BlackScholes(50,50,1,.05,.2,0.02,1,2)

	Gamma

	ans =

		0.0379

	>> BlackScholes(50,50,1,.05,.2,0.02,1,3)

	Vega

	ans =

		0.1895

	>> BlackScholes(50,50,1,.05,.2,0.02,1,4)

	Theta

	ans =

	   -0.0070

	>> BlackScholes(50,50,1,.05,.2,0.02,1,5)

	Rho

	ans =

		0.0025

	>> BlackScholes(50,50,1,.05,.2,0.02,1,6)

	Psi

	ans =

	   -0.2848

	>> BlackScholes(50,50,1,.05,4.6135
	,0.02,1,7)
	 BlackScholes(50,50,1,.05,4.6135
									|
	Error: Expression or statement is incorrect--possibly unbalanced (, {, or [.

	>> BlackScholes(50,50,1,.05,4.6135,0.02,1,7)

	Implied Volatility

	ans =

		0.2000

2D Plots
--------
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/2D_0.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/2D_1.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/2D_2.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/2D_3.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/2D_4.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/2D_5.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/2D_6.png)

3D Plots
--------
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/3D_0.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/3D_1.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/3D_2.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/3D_3.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/3D_4.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/3D_5.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/3D_6.png)
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_14/3D_7.png)


October 7 Assignment
====================

BSCall.m
--------
Write a function BSCall(S, K, r, q, vol, T) that returns the BlackScholes price of a call.

	>> BSCall(50,50,.04,.017,.20,1);
	4.4555

BSPut.m
-------
Write a function BSPut(S, K, r, q, vol, T) that returns the BlackScholes price of a put.

	>> BSPut(50,50,.04,.017,.20,1);
	3.3378

BSCall_plot.m
-------------
Write a script function that plots the price of a European call versus the Stock price S given K = 50, r = 4%, q = 1.7%, vol = 20%, T =1.
![BSCall_Plot](https://raw.githubusercontent.com/matthewfieger/fin_5624/master/oct_7/BSCall_plot.png)
