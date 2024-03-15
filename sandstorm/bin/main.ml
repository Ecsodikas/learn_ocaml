open Sandstorm

let map_int_to_button = function
  | 0 | 1 | 2 | 3 | 4 -> A
  | 5 | 6 | 7 | 8 | 9 -> B
  | 10 | 11 | 12 | 13 | 14 | 15 | 16 -> UP
  | 17 | 18 | 19 | 20 | 21 | 22 | 23 -> RIGHT
  | 24 | 25 | 26 | 27 | 28 | 29 | 30 -> DOWN
  | 31 | 32 | 33 | 34 | 35 | 36 | 37 -> LEFT
  | 38 -> START
  | 39 -> SELECT
  | _ -> A

let rec loop () =
  let r = Random.int 40 in
    press_release_button (map_int_to_button r);
    print_endline @@ string_of_int r;
    loop ()

let () =
  loop ()
