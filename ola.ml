open Lacaml.D

let rand_in l r n =
  let range = r -. l in
  Vec.random ~from:l ~range:range n

let () =
  let xs = rand_in (-5.) 5. 100 in
  let ys = rand_in (-1.) 1. 100 in
  axpy ~alpha:0.5 ~x:xs ys;
  Format.printf "X: %a\n" pp_vec xs;
  Format.printf "Y: %a\n" pp_vec ys
