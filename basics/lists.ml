(* adding all elements of the list/array *)

let rec sum list = 
  match list with
  | [] -> 0
  | first :: rest -> first + sum rest
;;

sum [1;2;3;4];;

(* reverse function for a list *)

let reverse lst = 
  let rec visit acc curr =
    match curr with
    | [] -> acc
    | h::t -> visit (h::acc) t
in
  visit [] lst
;;

reverse [1;2;3];;




