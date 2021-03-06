|%

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

++  array-length
  |=  arr=(list *)  (lent arr)

++  binary-search
  |=  [arr=(list @ud) x=@ud]
  =/  lo=@ud  0
  =/  hi=@ud  (dec (lent arr))
  |-
  ?>  (lte lo hi)
  =/  mid  (div (add lo hi) 2)
  =/  val  (snag mid arr)
  ?:  (lth x val)  $(hi (dec mid))
  ?:  (gth x val)  $(lo +(mid))
  mid

++  caesar-cipher
  |%
  ++  enc
    |=  [msg=tape key=@ud]
    ^-  tape
    %+  turn  `(list @)`msg
    |=  n=@ud
    (add (~(sum fo 26) (sub n 'A') key) 'A')
  ++  dec
    |=  [msg=tape key=@ud]
    (enc msg (sub 26 key))
  --

++  character-codes
  |%
  ++  enc
    |=  char=@t  `@ud`char
  ++  dec
    |=  code=@ud  `@t`code
  --

++  dot-product
  |=  [a=(list @sd) b=(list @sd)]
  =|  sum=@sd
  |-
  ?:  |(?=(~ a) ?=(~ b))  sum
  $(a t.a, b t.b, sum (sum:si sum (pro:si i.a i.b)))

++  even-or-odd
  |=  n=@ud
  ?:  =((mod n 2) 0)
    "even"
  "odd"

++  fibonacci-sequence
  |=  n=@ud
  =/  a=@ud  0
  =/  b=@ud  1
  |-
  ?:  =(n 0)  a
  $(a b, b (add a b), n (dec n))

--
