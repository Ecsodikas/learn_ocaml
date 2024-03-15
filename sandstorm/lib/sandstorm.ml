type button =
  | UP
  | RIGHT
  | DOWN
  | LEFT
  | A
  | B
  | START
  | SELECT

let press_button btn =
  let base_url = "localhost:6969/input" in
  ignore (match btn with
    | UP -> Ezcurl.get ~url:(base_url ^ "?Up=1") ()
    | RIGHT -> Ezcurl.get ~url:(base_url ^ "?Right=1") ()
    | DOWN -> Ezcurl.get ~url:(base_url ^ "?Down=1") ()
    | LEFT -> Ezcurl.get ~url:(base_url ^ "?Left=1") ()
    | A -> Ezcurl.get ~url:(base_url ^ "?A=1") ()
    | B -> Ezcurl.get ~url:(base_url ^ "?B=1") ()
    | START -> Ezcurl.get ~url:(base_url ^ "?Start=1") ()
    | SELECT -> Ezcurl.get ~url:(base_url ^ "?Select=1") ())

let release_button btn =
  let base_url = "localhost:6969/input" in
  ignore (match btn with
    | UP -> Ezcurl.get ~url:(base_url ^ "?Up=0") ()
    | RIGHT -> Ezcurl.get ~url:(base_url ^ "?Right=0") ()
    | DOWN -> Ezcurl.get ~url:(base_url ^ "?Down=0") ()
    | LEFT -> Ezcurl.get ~url:(base_url ^ "?Left=0") ()
    | A -> Ezcurl.get ~url:(base_url ^ "?A=0") ()
    | B -> Ezcurl.get ~url:(base_url ^ "?B=0") ()
    | START -> Ezcurl.get ~url:(base_url ^ "?Start=0") ()
    | SELECT -> Ezcurl.get ~url:(base_url ^ "?Select=0") ())

let press_release_button btn =
  ignore (press_button btn);
  ignore (release_button btn)
