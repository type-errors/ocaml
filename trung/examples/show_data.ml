let show_pair show1 show2 (v1, v2) =
  "(" ^ (show1 v1) ^ ", " ^ (show2 v2) ^ ")"

let show_list show xs =
  let res = xs |> List.map show |> String.concat ", " in
  "[" ^ res ^ "]"

let foo f g a b c =
  let y = show_list f [1; 2]
  and z = show_pair f (a, "")
  and t = show_list f [true; false] in
  ()
