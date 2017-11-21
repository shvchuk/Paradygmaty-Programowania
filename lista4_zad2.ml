(* funkcja unzip z wykładu *)

let rec unzip lst = 
  match lst with
    [] -> ([], [])
    | (h1, h2)::t -> let (lst1, lst2) = unzip t in (h1::lst1, h2::lst2)
;;