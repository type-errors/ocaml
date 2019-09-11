let test_length candidate =
  let b0 = (candidate [] = 0)
  and b1 = (candidate [1] = 1)
  and b2 = (candidate [true; false] = 2)
  and b3 = (candidate ['a'; 'b'; 'c'] = 3)
  and b4 = (candidate ['a'; 2 ; 'c'] = 3)
  and b5 = (candidate [true; 2 ; 'c'] = 3) in
  b0 && b1 && b2 && b3 && b4 && b5;;
