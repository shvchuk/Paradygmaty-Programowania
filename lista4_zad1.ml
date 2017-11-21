(* funkcjonał filter z wykładu *)
let rec filter pred lst = 
  match lst with
    | [] -> []
    | x::xs -> if pred x then x::filter pred xs else filter pred xs
;;

(* funkcjonał fold_left z wykładu *)
let rec fold_left f acc lst = 
  match lst with
    | h::t -> fold_left f (f acc h) t
    | [] -> acc
;;

(* let rowne lst =  *)
(* let predykat lst = List.fold_left f a lst;;

let tylkoRowne lst = List.filter predykat l;; *)

let tylkoRowne lst = filter (fold_left f acc lst) lst;;

