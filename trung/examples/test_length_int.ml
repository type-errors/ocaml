let test_length_int candidate =
  let b0 = (candidate [] = 0)
  and b1 = (candidate [1] = 1)
  and b2 = (candidate [2; 1] = 2)
  and b3 = (candidate [3; 2; 1] = 3)
  in b0 && b1 && b2 && b3;;
