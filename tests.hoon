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
++  test-even-or-odd
  ;:  weld
    %+  expect-eq
      !>  "even"
      !>  (even-or-odd 0)
    %+  expect-eq
      !>  "odd"
      !>  (even-or-odd 1)
  ==
--
