* programs in stata
*"capture" if you can do this command do it or keep going.
capture program drop hello_there
program define hello_there
	args name
	dis "hello `name'!"

end 

hello_there "fred"
