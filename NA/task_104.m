pkg load symbolic;

eqtn = input('Enter an equation(in terms of x): ', 's');

func = str2func(['@(x) ', eqtn]);

syms x;

f_ = diff(func(x), x);

k = matlabFunction(f_);

dif = input('Give your difference between two Roots :');

result = [];

for i = 1:5

  a = input('Enter first interval: ');

  b = input('Enter second interval: ');

  if f(a)*f(b) < 0

    break;

  else

    fprintf('No root between given intervals.\n')

  end

end

c = (a+b)/2;

%Root calculation

for i = 1:itr

  f_c = func(c);

  k_c = k(c);

  result = [c, result];

  d = c - (f_c/k_c);

  if abs(d-c) <= tol

    break;

  endif

  c = d;

end

fprintf('Root is %0.4f\n', c);

disp('Calculated roots in each iteration:');

disp(result');


%Graph visualization

x = 0:0.1:10;
hold on;
plot(x, func(x));
plot(c, func(c), 'xr');
title([eqtn, ' = 0']);
titleFontSize = 16;
set(get(gca, 'title'), 'FontSize', titleFontSize);
axisLabelFontSize = 12;
set(gca, 'FontSize', axisLabelFontSize);
set(gca, 'xAxisLocation', 'origin');
legend('Function values ', 'Root');
fprintf('Root is %0.3f\n', c);
disp(result');
