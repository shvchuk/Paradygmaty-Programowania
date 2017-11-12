let x1 = 7.5;;

(* statyczne wyznaczanie zakresu identyfikatora *)

let x = x1 +. x1 and y = 2.0 in
  x +. x +. (let x = 10.0 in x +. y) +. 1.0
;;

(* pary i krotki *)

let k3 = (3 + 4, 2. , 2 < 4);;

let k3_1 (x, y, z) = x;;
k3_1 k3;;

k3 = (8 -1, 2., 2=2);;

let k2 = (3+4, (2. , 2<4));;

fst k2;;
snd k2;;
fst(snd k2);;

(* listy *)

let xs = 1. :: x1 :: 2.5 :: [];;
List.hd xs;;
List.tl xs;;
List.length xs;;

xs@[9. ; 10.];;
List.rev[1;2;3];;

let xss = [[4. ; 5.]; xs; 1. :: 2. :: 3. :: []];;
List.length xss;;

(* funkcje *)




