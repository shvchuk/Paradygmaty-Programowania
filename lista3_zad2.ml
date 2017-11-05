(* ZAD Zapisać funkcję potega:float*int, licząca potęgę naturalną
danej liczby za pomocą rekurencji ogonowej w czasie logarytmicznym. *)


let potega(x,n)=
  let rec potegaWew(x,n) = 
      if(n = 1) then x
      else potegaWew(x,n-1)*x;
  in
    if(n = 0) then 1
    else potegaWew(x,n);;


potega(2, 10);;














  