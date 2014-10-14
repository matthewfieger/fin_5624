function ImpliedVol = BSImpliedVol(S,K,T,r,Price,q,IsCall)
	% Returns Black Scholes Implied Volatility Given A European Call or Put
	f = @ (vol) BSPrice(S,K,T,r,vol,q,isCall) - Price; %handle = @(arglist)anonymous_function
	ImpliedVolSeed = 0.10;
	ImpliedVol = fzero(f,ImpliedVolSeed);


%{
function_handle (@)
==================

Syntax
------
handle = @functionname
handle = @(arglist)anonymous_function

Description
------------
handle = @functionname returns a handle to the specified MATLAB® function.

A function handle is a MATLAB value that provides a means of calling a function indirectly.
You can pass function handles in calls to other functions (often called function functions).
You can also store function handles in data structures for later use (for example, as Handle Graphics callbacks).
A function handle is one of the standard MATLAB data types.

At the time you create a function handle,
the function you specify must be on the MATLAB path and in the current scope of the code creating the handle.
For example, you can create a handle to a local function
as long as you do so from within the file that defines that local function.
This condition does not apply when you evaluate the function handle.
You can, for example, execute a local function from a separate (out-of-scope) file using a function handle.
This requires that the handle was created by the local function (in-scope).

handle = @(arglist)anonymous_function constructs an anonymous function and returns a handle to that function.
The body of the function, to the right of the parentheses, is a single MATLAB statement or command.
arglist is a comma-separated list of input arguments.
Execute the function by calling it by means of the function handle, handle.

%}