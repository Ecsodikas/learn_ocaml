(* 1. Write a function last : 'a list -> 'a option that returns the last element of a list. (easy) *)

let rec last = function
  | []      -> None
  | [x]     -> Some x
  | _ :: xs -> last xs

(* 2. Find the last but one (last and penultimate) elements of a list. (easy) *)

let rec last_two = function
  | []          -> None
  | [x]         -> None
  | [x; y]      -> Some (x, y)
  | _ :: xs     -> last_two xs

(* 3. Find the K'th element of a list. (easy) *)

let rec kth l k =
  match l with
  |
