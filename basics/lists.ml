let rec sum list = 
  match list with
  | [] -> 0
  | first :: rest -> first + sum rest
;;

sum [1;2;3;4];;