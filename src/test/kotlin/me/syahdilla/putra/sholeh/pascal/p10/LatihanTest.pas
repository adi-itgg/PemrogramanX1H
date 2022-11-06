(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan1Test;
uses sysutils;

var i, inc, lim       : Integer;
    temp              : String;

// build=silent
begin
  // initialize default values
  inc  := 0;
  temp := '';

  i := 2;
  lim := 200;

  Write('Input kelipatan yang diinginkan : ', i);
  Write('Input limit kelipatan yang diinginkan : ', lim);

  repeat
    begin
      inc := inc+i;
      Write(inc, ' ');
      if byte(temp[0]) >= 87 then
        begin
          WriteLn();
          temp := '';
        end;
      temp := temp + IntToStr(inc) + ' ';
    end;
  until inc >= lim
end.