fun isEqual(ls) = if (length(ls)=1) then true
else if hd(ls)=hd(tl(ls)) then isEqual(tl(ls))
else false;

fun length [] = 0
  | length (x::xs) = 1 + length xs

fun combine [] = []
| combine (x::ls) = x @ combine ls;

fun validValues(ls) = if ls=nil then true
else if ((hd(ls) <> 1) andalso (hd(ls) <> 0)) then false
else validValues(tl(ls));

fun relational(ls) = if ls=nil then true
else (isEqual(length(ls)::map(length)(ls)) andalso validValues(combine(ls)));