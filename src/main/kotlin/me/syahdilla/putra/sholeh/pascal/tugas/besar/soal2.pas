(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 23/10/2022
 *)
program soal2;
uses fgl;

const a = 9;
      b = 2;

type TMap = specialize TFPGMap<String, Integer>;
var data  : TMap;
    c     : char;
// test verified
// runexe=2
// build=silent
begin
  data := TMap.Create;

  data['a2'] := a * a + b - b mod b;
  data['b2'] := a div b * a;
  data['c2'] := a + b * a div b;
  data['d2'] := data['b2']+data['c2'];
  data['e2'] := data['b2'] mod data['c2'];
  data['f2'] := data['b2'] div data['c2'];

  for c := 'a' to 'f' do
    writeln('2.', c,' = ', data[c+'2']);
end.