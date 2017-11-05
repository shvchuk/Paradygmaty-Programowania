let rec potega(x, n) = 
  if n = 0 then 1. else x *.potega(x, n-1);;

potega(2., 8);;

let parzysta(n) = 
  n mod 2 = 0;;

let kwadrat(x) = x * x;;

let rec potegaOptymalna(x, n) =
  if n = 0 then 1
  else if parzysta(n) then kwadrat(potegaOptymalna(x, n/2))
  else x * kwadrat(potegaOptymalna(x, (n-1)/2));;


potegaOptymalna(3, 6);;
