let rec sprawdzenie f n =
  match n with
    [] -> true
    | x::[] -> true
    | x::y::xs -> if f x y then sprawdzenie f (List.tl n) else false
;;

(* let list = List.filter (function x-> sprawdzenie (function y-> function z -> y=z) x) 
  [[1;1];[1;2];[1;1;3;4;5];[]]
;; *)

let list = List.filter (function x-> sprawdzenie (function y-> function z -> y=z) x) ;;

list [[1;1];[1;2];[1;1;3;4;5];[]];;



(* lista [[1,1]; [1,2]; [2,2,2]; [3,4,5]];; *)
