program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  StrUtils,
  Windows;

Procedure dr; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_red) end;
Procedure dg; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_green) end;
Procedure db; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_blue) end;
Procedure dc; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_blue or Foreground_green) end;
Procedure dm; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_red or Foreground_blue) end;
Procedure dy; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_red or Foreground_green) end;
Procedure gr; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_red or Foreground_green or Foreground_blue) end;

Procedure r; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_red or Foreground_intensity) end;
Procedure g; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_green or Foreground_intensity) end;
Procedure b; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_blue or Foreground_intensity) end;
Procedure c; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_blue or Foreground_green or Foreground_intensity) end;
Procedure m; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_red or Foreground_blue or Foreground_intensity) end;
Procedure y; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_red or Foreground_green or Foreground_intensity) end;
Procedure w; begin SetConsoleTextAttribute(GetStdHandle(std_output_handle), Foreground_red or Foreground_green or Foreground_blue or Foreground_intensity) end;

//====================================

begin
writeln('Colors:');
r; write('red '); gr; write('+ '); b; write('blue '); gr; write('= '); c; writeln('cyan');
g; write('green '); gr; write('+ '); b; write('blue '); gr; write('= '); m; writeln('magenta');
r; write('red '); gr; write('+ '); g; write('green '); gr; write('= '); y; writeln('yellow');
gr;
writeln;
//====================================
readln;
end.
