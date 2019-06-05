(* env.ml *)
(* functional and defunctionalized implementation of a polymorphic environment *)

(* ********** *)

type name = string;;

(* ********** *)

type 'a env_fun = name -> 'a option;;

let mt_fun =
  fun y -> None;;

let lookup_fun x e =
  e x;;

let extend_fun x d e =
  fun y -> if x = y then Some d else e y;;

(* ********** *)

type 'a env_def =
| E0
| E1 of name * 'a * 'a env_def;;

let apply_env_def e y =
  match e with
  | E0 ->
     None
  | E1 (x, d, e) ->
     if x = y then Some d else e y;; (* <-- should be: else apply_env e y *)

let mt_def =
  E0;;

let lookup_def x e =
  e x;; (* <-- should be: apply_env e x *)

let extend_def x d e =
  E1 (x, d, e);;

(* ********** *)

(* end of env.ml *)
