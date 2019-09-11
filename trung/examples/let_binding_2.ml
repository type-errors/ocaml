let test_length candidate =
  let b0 = (candidate [] = 0) in
  let b1 = (candidate [1] = 1) in
  let b2 = (candidate [true; false] = 2) in
  let b3 = (candidate ['a'; 'b'; 'c'] = 3) in
  let b4 = (candidate ['a'; 2 ; 'c'] = 3) in
  let b5 = (candidate [true; 2 ; 'c'] = 3) in
  b0 && b1 && b2 && b3 && b4 && b5;;
