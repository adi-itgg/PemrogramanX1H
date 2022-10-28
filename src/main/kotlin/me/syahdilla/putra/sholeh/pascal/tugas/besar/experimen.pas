(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 23/10/2022
 *)
program experimen;

uses crt;

var r,r1,r2:real;
  i     : integer;
  s, s1     : Char;
  st,s2:string;

begin

  s := pred('f');
  s1 := pred('3');
  s2 := 'PASCAL';

  writeln('1 : ', s, s1);
  writeln('2 :', succ(s2[3]));
  writeln('3 : ', succ('j'));

  st := 'UNINDRA';
  writeln('4 : ', ord(st[5]));
  writeln('5 : ', ord('5'));

  r := 201.456;
  r1 := 5.5106;
  writeln('6 : ', trunc(r));
  writeln('7 : ', trunc(r1));
  writeln('8 : ', trunc(3.45 + 5.55));
  writeln('9 : ', round(r));
  writeln('10: ', round(r1));
  writeln('11: ', frac(r): 0: 4);
  writeln('12: ', frac(r1): 0: 4);
  writeln('13: ', int(r): 0: 4);
  writeln('14: ', int(r1): 0: 4);
  writeln('15: ', trunc(r) div round(r1));
  writeln('16: ', trunc(r1) + round(r1) mod round(r1));
  writeln('17: ', exp(round(frac(r))): 0: 2);
  writeln('18: ', ln(exp(round(frac(r)))): 0: 2);
  writeln('19: ', cos(round(r1) - 6): 0: 2);

  i := 10;
  dec(i, 7);
  dec(i);
  writeln('20: ', i);

  inc(i);
  inc(i, 7);
  writeln('21: ', i);
  writeln('22: ', odd(i));
  writeln('23: ', odd(i + 1));

  r := 10;
  r := r * 10;
  writeln('24: ', r: 0: 0);

  r := 3;
  r1 := 5;
  r2 := 4;
  r := r2;
  r := r1 - r2;
  r := r * r1;
  ReadLn();
  gotoxy(15, 1);
  writeln('25: ', r: 0: 0);
  readln();
end.