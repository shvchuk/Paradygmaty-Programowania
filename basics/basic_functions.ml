let average a b =
  (a +. b) /. 2.0;;

average 5.0 10.0;;

let rec range a b =
  if a > b then []
  else a :: range (a+1) b;;

range 3 9;;

let positive_sum a b =
  let a = max a 0
  and b = max b 0 in
  a + b;;

positive_sum (-7) 4;;

let average_new a b =
  let sum = a +. b in
  sum /. 2.0;;

average_new 4.0 9.0;;



 let f a b = 
  (a +. b) +. (a +. b)**2.;;

let f_prim a b =
  let x = a +. b in
  x +. x**2.;;

f 2. 4.;;
f_prim 2. 4.;;
