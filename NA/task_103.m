eqtn = input('Give your equation : ', 's');

func = str2func(['@(x)', eqtn]);

dif = input('Give your difference between two Roots :');

result = [];

for i = 1 : 5

  a = input('Input two interval between [ ]');

  x1 = a(1);

  x2 = a(2);

  if(x1 * x2 < 0)

    break;

   else fprintf('No root between given interval.');

   end

 end

 for i = 1 : 10

   new_x = (x1 * func(x2) - x2 * func(x1))/(func(x2) - func(x1));

   result = [new_x, result];%storing roots in result vector

   if(abs(new_x - x1) <= dif || abs(new_x - x2) <= dif)

    break;

   endif

   if(func(x1) * func(new_x) < 0)

      x2 = new_x;

    else

      x1 = new_x;

    end

 end

 fprintf('Roots in every iteration : \n');

 disp(result');

 fprintf('Root is : %0.4f\n', new_x);

 %Graph

 x = 0 : 0.1 : 10;

hold on;

plot(x, func(x));

plot(new_x, func(new_x), 'xr');

title ([eqtn ' = 0']);

titleFontSize = 20;

set(get(gca, 'title'), 'FontSize', titleFontSize);

xlabel('X---->');

ylabel('Y---->');

axisLevelFontSize = 15;

set(gca, 'FontSize', axisLevelFontSize);

set(gca, 'xAxisLocation', 'origin');

legend('Function values', 'Root');




