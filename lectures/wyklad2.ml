(* literały funkcyjne/funkcje anonimowe *)
(function x -> x+x) 6;;

let double = function x -> x+x;;
double 6;;

let double x = x+x;;
double 6;;

(* funkcjonały *)
let f = function y -> function x -> x*x+y;;
f 2 5;;

let f2 = f 2;;
f2 5;;

let f5 = function z-> f z 5;;
f5 2;;
