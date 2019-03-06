let foo a b c =
  let x = a + 1 in
  let y = b ^ " " in
  let z = c in
  if (x > z) then x ^ "a"
  else y + x

let bar x y z =
  foo x y z
