(* lower: Char -> Char
 * returns lowercase version of given uppercase char *)
fun lower x = chr(ord(#"a") + ord(x) - ord(#"A"));

(* charsBetween: Unit -> Char List
 * returns list of characters between lowercase
 * and uppercase alphabets *)
fun charsBetween() =
  let
    fun makeList #"a" = []
      | makeList c  = c::makeList(chr(ord(c) + 1));
  in
    makeList(chr(ord(#"Z") + 1))
  end;

fun f n =
  if n = 0 then 1
  else n * f (n - 1);

fun fib n =
  if n = 0 then 1
  else if n = 1 then 1
  else fib (n - 1) + fib (n - 2);

fun factorial n =
  let
    fun fact (n, a) = if n = 0 then a
                      else fact(n - 1, n * a)
  in
    fact(n, 1)
  end;

fun fastFib n =
  let
    fun G (n, a, b) = if n = 0 then a
                      else if n = 1 then b
                      else G (n - 1, b, a + b)
  in
    G(n, 1, 1)
  end;

fun Power (m, n) = if m = 0 then 1
                   else n * Power (n, m - 1);

fun power m n = if m = 0 then 1
                else n * power (m - 1) n;

val cube = power 3;