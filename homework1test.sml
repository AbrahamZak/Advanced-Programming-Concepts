fun sqrt (x, s) = if s*s >= abs(x) then s else sqrt(x,s+1)

fun checkMod (x,n) = if n=1 then true
else if (x mod n = 0 andalso ((x div n) mod n) = 0) then false
else checkMod(x,n-1);

fun sqfree (num) = if num<=2 andalso num>=(~2) then true
else checkMod(num, sqrt(num,0)+1);

sqfree(10);
sqfree(75);
sqfree(63);
sqfree(~123454321);

fun isPrimeR(n,d) = if (n mod d) = 0 then false
                    else if (d * d) > n then true
                    else isPrimeR(n,d+1);
                    
fun isPrime(n) = if n=2 then true
                else if n<2 then false
                 else isPrimeR(n,2);
                 
fun delete (s,[]) = []
  | delete (s,x::xs) = if s = x then xs 
    else x::delete(s, xs);

fun isPrimeCheck(ls) = if ls = nil then nil
                    else if isPrime(hd(ls)) then delete(hd(ls),ls)
                        else hd(ls)::isPrimeCheck(tl(ls));

fun reverse(nil) = nil
                |reverse (x::xs) = reverse(xs)@[x];
                
fun remlastprime(ls) = if ls=nil then nil
                    else if isPrimeCheck(ls) = nil andalso isPrime(hd(ls)) then nil
                    else if isPrimeCheck(ls) = nil then ls
                    else reverse(isPrimeCheck(reverse(ls)));
                    

remlastprime([3]);
remlastprime([1,2,3,2,5,12]);
remlastprime([1,12,12,12,12]);
remlastprime([1,2,3,2,6,6,12]);