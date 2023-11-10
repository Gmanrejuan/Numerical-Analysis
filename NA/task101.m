a = userInput = input('Enter a your first matrix : ')

b = userInput = input('Enter a your second matrix : ')

row = rows(b);

column = columns(a);

d = max(a(:));

fprintf('Max value of a is %d\n',d)

an = a * b ;

if(row == column)

  fprintf('The required matrix is :\n' )

  disp(an);

else 'Matrix multiplication can not be applied!'

endif
