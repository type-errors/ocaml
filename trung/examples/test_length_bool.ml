let test_length_bool candidate =
  let b0 = (candidate [] = 0)
  and b1 = (candidate [true] = 1)
  and b2 = (candidate [true; false] = 2)
  and b3 = (candidate [true; false; false] = 3)
  in b0 && b1 && b2 && b3;;
