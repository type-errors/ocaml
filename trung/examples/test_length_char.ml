let test_length_char candidate =
  let b0 = (candidate [] = 0)
  and b1 = (candidate ['a'] = 1)
  and b2 = (candidate ['b'; 'a'] = 2)
  and b3 = (candidate ['c'; 'b'; 'a'] = 3)
  in b0 && b1 && b2 && b3;;
