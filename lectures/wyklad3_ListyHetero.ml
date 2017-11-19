(* warianty *)

type kolor = Trefl | Karo | Kier | Pik;;

type karta = As of kolor | Krol of kolor | Dama of kolor | Walet of kolor | Blotka of kolor*int;;

let k1 = Krol Pik let k2 = Blotka(Karo, 2);;

let rec przedzial a b = 
  if a>b then []
  else b::(przedzial a (b-1))
;;

let wszystkieKarty kol = 
  let figury = [As kol; Krol kol; Dama kol; Walet kol]
  and blotki = List.map (function n -> Blotka(kol, n)) (przedzial 2 10)
  in figury @ blotki
;;

let kiery = wszystkieKarty Kier;;

(* lista heterogeniczna przyklad 1 *)

type ('a, 'b)ab = A of 'a | B of 'b;;

let ls = ["Ala"; "ma"; "kota"] and lint = [1;2;3];;

let lsint = (List.map (function x -> A x) ls) @ (List.map (function x-> B x) lint);;

(* lista heterogeniczna przyklad 2 *)

let rec concat_and_add l =
  match l with
  | [] -> ("", 0)
  | h::t -> match (h, concat_and_add t) with (A str, (s, n)) -> (str^s, n)
  | (B num, (s, n)) -> (s, num+n)
;; 

concat_and_add lsint;;




