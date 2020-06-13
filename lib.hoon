|%
++  one-hundred-doors
  |^
  =/  doors=(list ?)  (reap 100 %.n)
  =/  passes=(list (list ?))  (turn (gulf 1 100) pass-n)
  |-
  ?~  passes  doors
  $(doors (toggle doors i.passes), passes t.passes)
  ::
  ::  Find which doors to toggle during pass n
  ++  pass-n
    |=  n=@ud
    (turn (gulf 1 100) |=(k=@ud =((mod k n) 0)))
  ::
  ::  Perform an element-wise XOR of two lists
  ++  toggle
    |=  [a=(list ?) b=(list ?)]
    =|  c=(list ?)
    |-
    ?:  |(?=(~ a) ?=(~ b))  (flop c)
    $(a t.a, b t.b, c [=((mix i.a i.b) 1) c])
  --
++  even-or-odd
  |=  n=@ud
  ?:  =((mod n 2) 0)
    "even"
  "odd"
--
