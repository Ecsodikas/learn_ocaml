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

let rec kth k = function
  | []               -> None
  | x::_ when k == 0 -> Some x
  | _::xs            -> kth (k - 1) xs

(* 4. Find the number of elements of a list. (easy) *)

let count l =
  let rec aux c = function
    | [] -> c
    | _ :: xs -> aux (c + 1) xs in
  aux 0 l

(* 5. Reverse a list. (easy) *)

let reverse l =
  let rec aux r = function
    | [] -> r
    | x :: xs -> aux (x :: r) xs in
  aux [] l

(* 6. Find out whether a list is a palindrome. (easy) *)

let is_palindrome l =
  l = (reverse l)

(* 7. Flatten a nested list structure. (medium) *)

let rec flatten = function
  | (x :: ys) :: xs -> x :: (flatten ys) :: flatten (xs)
  | x -> x
