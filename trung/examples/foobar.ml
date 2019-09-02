let first (a,b,_) = a

let second (a, b, _) = b

let rec f x =
 let first_x = first x in
 let second_x = int_of_string (second x) in
 first_x + second_x

f ("1", "2", f ("3", "4", 5));;
