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
