|%
::
++  one-hundred-doors
  |^
  =/  doors=(list ?)  (reap 100 %.n)
  =/  passes=(list (list ?))  (turn (gulf 1 100) pass-n)
  |-
  ?~  passes  doors
  $(doors (toggle doors i.passes), passes t.passes)
  ++  pass-n
    |=  n=@ud
    (turn (gulf 1 100) |=(k=@ud =((mod k n) 0)))
  ++  toggle
    |=  [a=(list ?) b=(list ?)]
    =|  c=(list ?)
    |-
    ?:  |(?=(~ a) ?=(~ b))  (flop c)
    $(a t.a, b t.b, c [(xor i.a i.b) c])
  ++  xor
    |=  [a=? b=?]  =((mix a b) 1)
  --
::
++  array-length
  |=  arr=(list *)  (lent arr)
::
++  caesar-cipher
  |%
  ++  enc
    |=  [msg=tape key=@ud]
    ^-  tape
    (turn `(list @)`msg |=(n=@ud (add (mod (add (sub n 'A') key) 26) 'A')))
  ++  dec
    |=  [msg=tape key=@ud]
    (enc msg (sub 26 key))
  --
::
++  even-or-odd
  |=  n=@ud
  ?:  =((mod n 2) 0)
    "even"
  "odd"
--
