let main a b c =
  let a = a + 1 in
  let b = b && true in
  let c = c ^ "" in
  let x = a + b in
  let y = a ^ c in
  let z = b && c in
  (x, y, z)
