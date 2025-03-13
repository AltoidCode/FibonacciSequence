| n fib previous current |
FileStream stdout nextPutAll: 'Enter the number of Fibonacci terms: '; flush.
n := (FileStream stdin nextLine) asInteger.

previous := 0.
current := 1.

1 to: n do: [ :i |
  FileStream stdout nextPutAll: current print, ' '; flush.
  current := current + previous.
  previous := current - previous.
].
FileStream stdout nl.
