let max3 a b c =
  let a = a + 0 in
  let b = b ^ "" in
  let c = c && true in
  if a > b then 
    if a > c then a
    else c
  else if b > c then b
  else c
