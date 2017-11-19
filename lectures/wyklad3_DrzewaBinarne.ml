(* definicja typu dla drzew binarnych jest rekurencyjna *)

type 'a bt = Empty | Node of 'a * 'a bt * 'a bt;;

let t = Node(1,Node(2,Empty,Node(3,Empty,Empty)),Empty);;

let rec nodes = function Empty -> 0 | Node(_,t1,t2) -> 1 + nodes t1 + nodes t2;;

nodes t;;
