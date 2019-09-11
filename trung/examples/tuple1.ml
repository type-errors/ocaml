let sum t =
  let a, b, c = t in
  a + b + c

let main a b c =
  let a = 1 in
  let b = b ^ " " in
  let c = c && true in
  sum (a, b, c)
