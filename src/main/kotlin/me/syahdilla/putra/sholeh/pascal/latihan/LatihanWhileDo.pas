(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 29/10/2022
 *)
program LatihanWhileDo;
//uses crt;

var
  n, i, jum: integer;
  rata: real;
  lagi: char;
// test verified
// build=silent
begin
  //clrscr;
  lagi := 'y';
  while lagi = 'y' do
    begin
      //clrscr;
      write('banyak data: ');
      readln(n);
      begin
        jum := 0;
        i := 1;
        while i <= n do
          begin
            jum := jum + 1;
            i := i + 1;
          end;
        rata := jum / n;
        writeln('jumlah: ', jum);
        writeln('rata: ', rata: 2: 2);
        writeln;
        writeln('anda ingin ulang lagi(y/t)? ');
        readln(lagi);
      end;
    end;
end.