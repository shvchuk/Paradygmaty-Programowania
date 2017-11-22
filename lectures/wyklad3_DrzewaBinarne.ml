(* definicja typu dla drzew binarnych jest rekurencyjna *)

type 'a bt = Empty | Node of 'a * 'a bt * 'a bt;;

let t = Node(1,Node(2,Empty,Node(3,Empty,Empty)),Empty);;

let rec nodes = function Empty -> 0 | Node(_,t1,t2) -> 1 + nodes t1 + nodes t2;;

nodes t;;

(* przykład drzewa binarnego *)

let tt = Node(1,
              Node(2, 
                Node(4,
                    Empty,
                    Empty
                    ),
                Empty
                ),
              Node(3,
                  Node(5,
                      Empty,
                      Node(6,
                          Empty,
                          Empty
                          )
                      ),
                  Empty      
                  )
              )
;;

nodes tt;;

(* obejście drzew binarnych w głąb prefiksowo *)
let rec preorder = function
  Node (v,l,r) -> v::(preorder l) @ (preorder r)
  | Empty -> []
;;

preorder tt;;

(* efektywniejsza wersja preorder traversal *)
let preorder' t = 
  let rec preord = function
  (Empty, labels) -> labels
  | (Node(v,t1,t2), labels) -> v :: preord (t1, preord (t2, labels))
in preord (t, []);;

preorder' tt;;

(* obejście drzew w głąb infiksowo i postfiksowo *)
let rec inorder = function
Node(v, l, r) -> (inorder l) @ v::(inorder r)
| Empty -> []
;;

inorder tt;;

let rec postorder = function
Node(v,l,r) -> (postorder l) @ (postorder r) @ [v]
| Empty -> []
;;

postorder tt;;

(* Lista -> drzewo poszukiwań binarnych *)
let rec list2bst l =
  let rec insert2bst = function
    (k, Node (r,lt,rt)) ->
        if k<r then Node(r,insert2bst(k,lt),rt) else
        if k>r then Node(r,lt,insert2bst(k,rt))
        else failwith "duplicated key"
    | (k, Empty) -> Node (k,Empty,Empty)
  in
    match l with
        h::t -> insert2bst(h, list2bst t)
        | [] -> Empty
;;

list2bst [6;4;9;2;5];;


