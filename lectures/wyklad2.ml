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

(* lukier syntaktyczny *)
(* poniżej cztery równoważne definicje funkcji *)
let plus = function x -> function y -> x + y;;
let plus' x = function y -> x + y;;
let plus'' x y = x + y;;
let plus3 = fun x y -> x + y;;

let d1 = plus 2 3;;
let d2 = plus' 2 3;;
let d3 = plus'' 2 3;;
let d4 = plus3 2 3;;

(* polimorfizm parametryczny *)
let id x = x;;
id 5;;
id (3 + 4, "siedem");;
id id "OK";;
id;;

(* postać zwinięta - uncurried *)
let plus (x,y) = x + y;;
plus (4, 5);;

(* postać rozwinięta - curried *)
let add x y = x + y;;
add 4 5;;

(* funkcje wzajemnie rekurencyjne *)
let rec evenR n = if n = 0 then true 
  else oddR(n - 1) and oddR n = if n = 0 then false
  else evenR(n - 1)
;;

evenR 128;;
oddR 128;;

(* efektywne definicje funkcji even i odd *)
let even n = n mod 2 = 0;;
let odd n = n mod 2 <> 0;;

even 10;;
even 13;;

(* rekursja ogonowa *)
let rec succ n = 
  if n = 0 then 1
  else 1 + succ(n-1)
;;

succ 1000000;;

let succ_tail n = 
  let rec succ_iter(n, accum) = 
    if n = 0 then accum
    else succ_iter(n-1, accum+1)
  in
    succ_iter(n,1)
;;

succ_tail 1000000;;

(* gorliwe wartościowanie rekursji *)
let rec factorial n = 
  if n = 0 then 1
  else n*factorial(n-1)
;;

factorial 4;;

(* gorliwe wartościowanie rekursji ogonowej *)
let rec factIt(n, ak) = 
  if n = 0 then ak
  else factIt(n-1, n*ak) 
;;

factIt(4, 1);;

(* wybór przypadku *)
let imply1 v =
  match v with
    | (false, false) -> true
    | (false, true) -> true
    | (true, false) -> false
    | (true, true) -> true
;;

let imply2 v = 
  match v with
    | (true, false) -> false
    | _ -> true
;;

imply2 (1>2, true);;

(* funkcja zip *)
(* zip ([x1, x2, x3], [y1, y2, y3]) = [(x1, y1), (x2, y2), (x3, y3)] *)

let rec zip (xs, ys) = 
  match (xs, ys) with
    | (h1::t1, h2::t2) -> (h1, h2)::zip(t1, t2)
    | _ -> []
;;

zip ([1;2;3], ['a';'b';'c']);;

zip ([1;2;3], ['a';'b']);;

(* funkcja unzip *)
let rec unzip lst = 
  match lst with
    [] -> ([], [])
    | (h1, h2)::t -> let (lst1, lst2) = unzip t in (h1::lst1, h2::lst2)
;;

unzip [(1, 2); (3, 4); (5, 6); (7, 8)];;










