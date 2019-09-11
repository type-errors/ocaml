let bar x =
  let a, b, c = x in
  a + b + c

let foo a b c =
  let a = 1 in
  let b = b ^ " " in
  let c = c && true in
  bar (a, b, c)
