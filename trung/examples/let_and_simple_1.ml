let main a b c =
  let a = a + 1 in
  let b = b && true in
  let c = c ^ "" in
  let x = a + b
  and y = a ^ c
  and z = b && c in
  (x, y, z)
