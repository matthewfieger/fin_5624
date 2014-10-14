FIN 5624 - Numerical Methods - Fall 2014
========================================

October 14 Assignemnt
====================


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
