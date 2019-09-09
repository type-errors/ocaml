(* First example *)

let f g z t =
  (g (z t), z ^ "1", z == "1")

(* The fix is: z ^ t *)
