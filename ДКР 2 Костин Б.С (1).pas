begin
  var a: array[1..100] of integer;
  var min, n: integer;
  print('Размер массива от 1 до 100, введите n = ');
  readln(n);   
  if (n < 1) and (n > 100) then exit;
  print('Введите массив А:');
  for var i := 1 to n do read(a[i]);
  writeln;
  min := 100;
  for var i := 1 to n do
    if abs(a[i]) < abs(min) then min := a[i];
  print('Минимум по модулю = ', abs(min));
end.
