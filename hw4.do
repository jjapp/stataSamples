cd "\\files\users\jappert\Documents\Stata\ML"
sysuse HW4, clear

**Raw data saved as individual natives
use HW4.dta if year!=1980, clear
save ind.dta, replace

*Data on share foreign born
use HW4.dta, clear
gen fb=(bpld>=15000)
collapse (mean) fb, by(statefip year)
*foreign born share
