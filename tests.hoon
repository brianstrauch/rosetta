/+  *test, *rosetta-code-hoon-lib
|%
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
