(* env_with_modules.ml *)
(* functional and defunctionalized implementation of a polymorphic environment *)
(* Singapore, 03-04 Jun 2019 *)

(* ********** *)

type name = string;;

(* ********** *)

module type ENV =
sig
  type 'a env
  val empty : 'a env
  val extend : name -> 'a -> 'a env -> 'a env
  val lookup : name -> 'a env -> 'a option
end;;

(* ********** *)

module Env_fun : ENV =
struct
  type 'a env = name -> 'a option
  
  let empty =
    fun y -> None
  
  let lookup x e =
    e x
  
  let extend x d e =
    fun y -> if x = y then Some d else e y
end;;

(* ********** *)

module Env_def : ENV =
struct
  type 'a env =
  | E0
  | E1 of name * 'a * 'a env

  let apply_env e y = (* should be: let rec apply_env to reflect that env is a recursive type *)
    match e with
    | E0 ->
       None
    | E1 (x, d, e) ->
       if x = y then Some d else apply_e y (* <-- should be: else apply_env e y *)

  let empty =
    E0
  
  let lookup x e =
    e x (* <-- should be: apply_env e x *)
  
  let extend x d e =
    E1 (x, d, e)
end;;

(* ********** *)

(* end of env_with_modules.ml *)
