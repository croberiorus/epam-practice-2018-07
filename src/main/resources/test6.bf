// x = x * x

// Enter and print input values :
,.           enter 'x' value to cell #1 and print

// Copy 'x' value from cell #1 to cells #2 and #3 :
[            until the cell #1 is not 0
  >+         increase cell #2 ('x' now)
  >+         increase cell #3 ('x' now)
  <<-        decrease cell #1
]            check if the cell #1 is 0

// Copy 'x' value from cell #3 to cell #1 :
>>[          until the cell #3 is not 0
  <<+         increase cell #1 ('x' now)
  >>-         decrease cell #3
]

// Clear temp cell #4 for multplication :
>[-]

// Multiplication :
<<<[         until the cell #1 is not 0
  >[         until the cell #2 is not 0 (summ 'x' value 'y' times)
    >+       increase cell #3 (here multiplication (cell #1 counter; ex 2 * 3; where 2 counter))
    >+       increase cell #4 (for future)
    <<-      decrease cell #2
  ]          check if the cell #2 is 0
  
  >>[        until the cell #4 is not 0 (saved 'y' value)
    <<+      increase cell #2 (copy 'y' value)
    >>-      decrease cell #4
  ]          check if the cell #4 is 0

  <<<-       decrease cell #1 
]            check if the 'x' value (cell #1) is 0 

// Copy result to 'x' cell :
>>[          until the cell #3 is not 0
 <<+         increase cell #1
 >>-         decrease cell #3
]            check if the cell #3 is 0

// Print 'x' and 'y' values :
<<.>.
