datatype Lambda = V of int
| App of Lambda * Lambda
| Abs of int * Lambda

fun num(V n) = n;

fun rectified (Abs(x,Abs(y,z))) = if x=y then false else true
| rectified (App(z,Abs(n,a))) = if n = num(z) then false else true
| rectified (Abs(i,n)) = true;