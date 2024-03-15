type button =
  | UP
  | RIGHT
  | DOWN
  | LEFT
  | A
  | B
  | START
  | SELECT

(** Emulates a button press.*)
val press_release_button : button -> unit
val press_button : button -> unit
val release_button : button -> unit
