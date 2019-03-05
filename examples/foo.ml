let foo a b =
  let x = a + 1 in
  let y = b ^ " " in
  let z = (x = y) in
  z

let bar x y =
  foo a b
