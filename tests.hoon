/+  *test, *rosetta-code-hoon-lib

|%

++  test-100-doors
  %+  expect-eq
    !>  ;:  welp
          [%.y %.n %.n %.y %.n %.n %.n %.n %.y %.n ~]
          [%.n %.n %.n %.n %.n %.y %.n %.n %.n %.n ~]
          [%.n %.n %.n %.n %.y %.n %.n %.n %.n %.n ~]
          [%.n %.n %.n %.n %.n %.y %.n %.n %.n %.n ~]
          [%.n %.n %.n %.n %.n %.n %.n %.n %.y %.n ~]
          [%.n %.n %.n %.n %.n %.n %.n %.n %.n %.n ~]
          [%.n %.n %.n %.y %.n %.n %.n %.n %.n %.n ~]
          [%.n %.n %.n %.n %.n %.n %.n %.n %.n %.n ~]
          [%.y %.n %.n %.n %.n %.n %.n %.n %.n %.n ~]
          [%.n %.n %.n %.n %.n %.n %.n %.n %.n %.y ~]
        ==
    !>  one-hundred-doors

++  test-array-length
  ;:  weld
    %+  expect-eq
      !>  0
      !>  (array-length ~)
    %+  expect-eq
      !>  2
      !>  (array-length ["apple" "orange" ~])
  ==

++  test-binary-search
  ;:  weld
    %+  expect-eq
      !>  0
      !>  (binary-search ~[0 1 2] 0)
    %+  expect-eq
      !>  1
      !>  (binary-search ~[0 1 2] 1)
    %+  expect-eq
      !>  2
      !>  (binary-search ~[0 1 2] 2)
    %-  expect-fail
      |.  (binary-search ~[0 1 2] 3)
  ==

++  test-caesar-cipher
  ;:  weld
    %+  expect-eq
      !>  "JK"
      !>  (enc:caesar-cipher "HI" 2)
    %+  expect-eq
      !>  "BC"
      !>  (enc:caesar-cipher "HI" 20)
    %+  expect-eq
      !>  "HI"
      !>  (dec:caesar-cipher (enc:caesar-cipher "HI" 2) 2)
  ==

++  test-character-codes
  ;:  weld
    %+  expect-eq
      !>  97
      !>  (enc:character-codes 'a')
    %+  expect-eq
      !>  'a'
      !>  (dec:character-codes 97)
  ==

++  test-dot-product
  %+  expect-eq
    !>  --3
    !>  (dot-product [--1 --3 -5 ~] [--4 -2 -1 ~])

++  test-even-or-odd
  ;:  weld
    %+  expect-eq
      !>  "even"
      !>  (even-or-odd 0)
    %+  expect-eq
      !>  "odd"
      !>  (even-or-odd 1)
  ==

++  test-fibonacci-sequence
  ;:  weld
    %+  expect-eq
      !>  0
      !>  (fibonacci-sequence 0)
    %+  expect-eq
      !>  1
      !>  (fibonacci-sequence 1)
    %+  expect-eq
      !>  6.765
      !>  (fibonacci-sequence 20)
  ==

--
