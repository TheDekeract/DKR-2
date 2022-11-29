begin
  var  j, maxkol, kol: integer;
  var s, w, slow, max: string;
  j := 0;
  kol := 0;
  maxkol := 0;
  w := '';
  print('Предложение, словосочетание, надпись: ');
  readln(s);
  s := s + ' ';
  for var i := 1 to length(s) do if s[i] <> ' ' then w := w + s[i] else j := j + 1;
  w := '';
  for var i := 1 to length(s) do
    if s[i] <> ' ' then w := w + s[i] else
    begin
      if slow <> w then kol := 0;
      slow := w;
      for var k := 1 to j do
        if s[i] <> ' ' then w := w + s[i] else
        begin
          if slow = w then kol := kol + 1;
          if maxkol < kol then
          begin
            maxkol := kol;
            max := slow;
          end;
          w := '';
        end;
      w := '';
    end;
  print(max);
end.
