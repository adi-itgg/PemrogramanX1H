(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan;
uses sysutils;

var i, inc, lim       : Integer;
    temp              : String;

// build=silent
begin
  // initialize default values
  inc  := 0;
  temp := '';

  Write('Input kelipatan yang diinginkan : '); ReadLn(i);
  Write('Input limit kelipatan yang diinginkan : '); ReadLn(lim);

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
  until inc >= lim;
end.