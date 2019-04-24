datatype 'a bintree = Empty | Ar of 'a bintree * 'a * 'a bintree;

fun depth (Empty) = 0
| depth(Ar(left, data, right)) = 1 + let 
val left = depth left
val right = depth right
in if left < right then right else left
end;

fun balanced Empty = true
| balanced(Ar(left,data,right)) = 
if left = Empty then balanced (right)
else if right = Empty then balanced (left)
else if depth(left) = depth(right) then true else false;

val Em = Empty;
fun nd n = Ar(Empty, n, Empty);