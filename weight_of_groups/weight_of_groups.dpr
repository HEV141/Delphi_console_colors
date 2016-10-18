program weight_of_groups;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const f=14;

type
vector=array[1..f] of integer;

var
  k:vector;  //default_array
  k_1:vector;  //array with groups
  k_2: vector;
  i:integer;
  sum,h,g,number_m,j,m, sum_1,sum_2: integer;
  sch:integer;

begin
randomize;
sum:=0;
sum_1:=0;
sum_2:=0;
sch:=0 ;
h:=0;

for i:=1 to f do
  begin
  k[i]:=random(25)+1;  // add random values (1-25) in our array
  write (k[i],' ');
  sum:=(sum+k[i]);  // compute sum of all elements of the array
  end;
writeln;
m:=k[1];  // m - the first number of the array
writeln;

for g:=1 to f do
  begin
  m:=k[g];
  number_m:=g;  // element's number
  
  for j:=g to f do  // from start to end :)
    begin
       if k[j]<m then
         begin
         m:=k[j];
         number_m:=j;
         end;
    end;
  k[number_m]:=k[g]; // the maximum value on the tail of array
  k[g]:=m;
  end;

for i:=1 to f do
  begin
  write (k[i], ' ');
  end;

writeln;
writeln;
writeln('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');
write('Weight of the all groups: ',sum);  // sum of all elemnts of the array

sum:= sum div 2; // half of the array
writeln  (';                               half weight~ ',sum);
m:=k[1];  //min value of the array

//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
while sum_1<=sum  do
  begin
  h:=h+1;
  sum_1:=sum_1+k[h];
  sch:=(sch+1);
  end;

writeln;
write ('Index_number of the elements in first group: ');
writeln ('1-',sch);
writeln;
write ('Index_number of the elements in second group: ');
writeln (sch+1,'-',f);
writeln;
writeln ('================================================================================');
write ('First group: ');
write;

for i:=1 to sch do
  begin
  k_1[i]:=k[i];
  write (k_1[i], ' ');
end;

//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
writeln;
writeln;
writeln ('--------------------------------------------------------------------------------');
write ('Second group: ');

for i:=sch+1 to f do
  begin
  k_2[i]:=k[i];
  sum_2:=sum_2+k_2[i];
  write (k_2[i], ' ');
  end;

writeln;
writeln;
writeln ('================================================================================');
writeln ('Weight of the first group: ',sum_1);
writeln;
write ('Weight of the second group: ',sum_2);
readln;
end.
