program LR2_Pokaz;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type mas=array of integer;


 procedure ShellSort(var a:mas;var TS:TdateTime);

 procedure shag(x:longint);
 var j,i,n:longint;
     k,per:longint;
  begin
 for k := 0 to x do  begin
 n:=length(a);
 i:=k;
  while (i<n) do
    begin
    j:=i;
    while (j>=x) and (a[j]<a[j-x]) do begin

        begin
          per:=a[j-x];
          a[j-x]:=a[j];
          a[j]:=per;
        end;
        j:=j-x;
        end;
    i:=i+x;
    end;
    end;
 end;
  var
   j: integer;
   T: word;
   h: array of Longint;
   N: Longint;

 begin
   N := Length(a) - 1;
   T := 1;
   SetLength(h, T);
   h[0] := 1;
   while h[T-1] < N div 2 do
   begin
     T := T + 1;
     SetLength(h, T + 1);
     h[T-1]:=h[T-2]*3+1;
   end;
  ts:=now;
  for j:=t-1 downto 0 do
  shag(h[j]);
  ts:=now-ts;
 end;

 procedure HeapSort(var a:mas);


          procedure sift(L,R: integer);
          var
          i,j: integer;
          x,n: integer;

          begin
          n:=length(a)-1;
          i:=L;
          j:=2*i;
          x:=a[i];
          if (j<R) and (a[j]<a[j+1]) then
          j:=j+1;

          while (j<=R) and (x<a[j]) do
            begin
            a[i]:=a[j];
            i:=j;
            j:=2*j;
            if (j<R) and (a[j]<a[j+1]) then
            j:=j+1;
            end;

          a[i]:=x;
          end;

      var
      L,R: integer;
      x,n: integer;
      begin

       n:=length(a)-1;
       L:=(N div 2)+1;   // Подготовка к реализации
       R:=N;

        while L>1 do
        begin
        L:=L-1;          // Создание пирамиды
        sift(L,R);
        end;

        while R>1 do
        begin
        x:=a[1];
        a[1]:=a[R];
        a[R]:=x;         //
        R:=R-1;
        sift(L,R);
        end;

      end;

 procedure QuickSort(var a: mas);
   procedure sort(L, R: integer);
   var
     i, j: integer;
     w, x: integer;
   begin
     i := L;
     j := R;
     x := a[(L + R) div 2];
     repeat
       while a[i] < x do
         i := i + 1;
       while x < a[j] do
         j := j - 1;
       if i <= j then
       begin
         w := a[i];
         a[i] := a[j];
         a[j] := w;
         i := i + 1;
         j := j - 1;
       end;
     until i > j;
     if L < j then
       sort(L, j);
     if i < R then
       sort(i, R);
   end  ;
   var n:integer;
begin
n:=length(a)-1;
  sort(0,n);
end;

 procedure ShellSortShag(var a:mas;var TS:TdateTime);

 procedure shag(x:longint);
 var j,i,n:longint;
     k,per:longint;
  begin
 for k := 0 to x do  begin
 n:=length(a);
 i:=k;
  while (i<n) do
    begin
    j:=i;
    while (j>=x) and (a[j]<a[j-x]) do begin

        begin
          per:=a[j-x];
          a[j-x]:=a[j];
          a[j]:=per;
        end;
        j:=j-x;
        end;
    i:=i+x;
    end;
    end;
 end;
  var
   j,l: integer;
   T: word;
   h: array of Longint;
   N: Longint;

 begin
   N := Length(a) - 1;
   T := 1;
   SetLength(h, T);
   h[0] := 1;
   while h[T-1] < N div 2 do
   begin
     T := T + 1;
     SetLength(h, T + 1);
     h[T-1]:=h[T-2]*3+1;
   end;
  ts:=now;
  for j:=t-1 downto 0 do begin
  writeln ('Shag raven ',h[j]);
  shag(h[j]);
  for l:=0 to n-1 do
  write (a[l],' ');
  writeln;
  end;
  ts:=now-ts;
 end;

 procedure HeapSortShag(var a:mas);


          procedure sift(L,R: integer);
          var
          i,j: integer;
          x,n: integer;

          begin
          n:=length(a)-1;
          i:=L;
          j:=2*i;
          x:=a[i];
          if (j<R) and (a[j]<a[j+1]) then
          j:=j+1;

          while (j<=R) and (x<a[j]) do
            begin
            a[i]:=a[j];
            i:=j;
            j:=2*j;
            if (j<R) and (a[j]<a[j+1]) then
            j:=j+1;
            end;

          a[i]:=x;
          end;

      var
      L,R: integer;
      x,n,t: integer;
      begin

       n:=length(a)-1;
       L:=(N div 2)+1;   // Подготовка к реализации
       R:=N;

        while L>1 do
        begin
        L:=L-1;          // Создание пирамиды
        sift(L,R);
        end;
        writeln ('Poluchennaya piramida');
        for t:=1 to n do
        write (a[t],' ');
        writeln;

        while R>1 do
        begin
        x:=a[1];
        a[1]:=a[R];
        a[R]:=x;         
        R:=R-1;
        sift(L,R);
          for t:=1 to n do
  write (a[t],' ');
  writeln;
        end;

      end;

 procedure QuickSortShag(var a: mas);
   procedure sort(L, R: integer);
   var
     i, j,t: integer;
     w, x,n: integer;
   begin
     n:=length(a)-1;
     i := L;
     j := R;
     x := a[(L + R) div 2];
     repeat
       while a[i] < x do
         i := i + 1;
       while x < a[j] do
         j := j - 1;
       if i <= j then
       begin
         w := a[i];
         a[i] := a[j];
         a[j] := w;
         i := i + 1;
         j := j - 1;
       end;
         for t:=0 to n do
         write (a[t],' ');
         writeln;
     until i > j;
     if L < j then
       sort(L, j);
     if i < R then
       sort(i, R);
   end  ;
   var n:integer;
begin
n:=length(a)-1;
  sort(0,n);
end;


var
TP: TdateTime;
myHour, myMin, mySec, mymilli:word ;
nazv:string;
a,b:mas;
i,n:integer;
vdoh,vydoh:string;
input,output:text;
t:char;

begin
vdoh:=paramstr(1);
vydoh:=paramstr(2);
assignfile(input,vdoh);
reset(input);
assignfile (output,vydoh);
rewrite(output);

readln(input,n);
setlength (b,n);
for I := 0 to n-1 do
  read (input,b[i]);
writeln ('Hotite li vy vypolnyat'' algoritm poshagovo? y/n');
readln (t);


if t='n' then
  begin
  Writeln ('Shella(s), Piramidal''noi(h), Bystroy{q}?');
  readln(t);
    if t='s' then
    begin
    ShellSort (b,TP);
    DecodeTime(Tp, myHour, myMin, mySec, myMilli);
    writeln(output,n);
    for I := 0 to n-1 do
      write (output,b[i],' ');
    writeln(output);
    writeln(output,'Shella');
    writeln(output,myHour*3600+myMin*60+mySec+myMilli/1000:0:3,' sec');
    end

  else
  if t='h' then
    begin
    setlength(a,n+1);
    for I := 0 to n - 1 do
      a[i+1]:=b[i];
    Tp:=Now;
    HeapSort(a);
    Tp:=Now-Tp;
    DecodeTime(Tp, myHour, myMin, mySec, myMilli);
    writeln(output,n);
    for I := 1 to n do
      write (output,a[i],' ');
    writeln(output);
    writeln(output,'Piramida');
    writeln(output,myHour*3600+myMin*60+mySec+myMilli/1000:0:3,' sec');
    end
  else

  if t='q' then
    begin
    Tp:=Now;
    QuickSort (b);
    Tp:=Now-Tp;
    DecodeTime(Tp, myHour, myMin, mySec, myMilli);
    writeln(output,n);
    for I := 0 to n-1 do
      write (output,b[i],' ');
    writeln(output);
    writeln(output,'Bystroy');
    writeln(output,myHour*3600+myMin*60+mySec+myMilli/1000:0:3,' sec');
  end;
          
end

else
  begin
  Writeln ('Shella(s), Piramidal''noi(h), Bystroy{q}?');
  readln(t);
    if t='s' then
    begin
    ShellSortShag (b,TP);
    DecodeTime(Tp, myHour, myMin, mySec, myMilli);
    writeln(output,n);
    for I := 0 to n-1 do
      write (output,b[i],' ');
    writeln(output);
    writeln(output,'Shella');
    writeln(output,myHour*3600+myMin*60+mySec+myMilli/1000:0:3,' sec');
    end

  else
  if t='h' then
    begin
    setlength(a,n+1);
    for I := 0 to n - 1 do
      a[i+1]:=b[i];
    Tp:=Now;
    HeapSortShag(a);
    Tp:=Now-Tp;
    DecodeTime(Tp, myHour, myMin, mySec, myMilli);
    writeln(output,n);
    for I := 1 to n do
      write (output,a[i],' ');
    writeln(output);
    writeln(output,'Piramida');
    writeln(output,myHour*3600+myMin*60+mySec+myMilli/1000:0:3,' sec');
    end
  else

  if t='q' then
    begin
    Tp:=Now;
    QuickSortShag (b);
    Tp:=Now-Tp;
    DecodeTime(Tp, myHour, myMin, mySec, myMilli);
    writeln(output,n);
    for I := 0 to n-1 do
      write (output,b[i],' ');
    writeln(output);
    writeln(output,'Bystroy');
    writeln(output,myHour*3600+myMin*60+mySec+myMilli/1000:0:3,' sec');
  end;
  end;
   readln;
   closefile (input);
   closefile (output);
  end.
