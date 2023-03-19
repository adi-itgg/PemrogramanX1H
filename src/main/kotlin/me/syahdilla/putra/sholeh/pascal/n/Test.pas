(*
 * Project: PemrogramanX1H
 * User: JANGNU
 * Date: 23/11/2022
 *)
program Test;
uses crt;
// build=silent
Type
  Tree = ^Simpul;

  Simpul = Record
    Info: char;
    Kiri: Tree;
    Kanan: Tree;
  End;

Function BARU(huruf: Char): Tree;
Var
  Temp: Tree;
Begin
  New(Temp);
  Temp^.Info := huruf;
  Temp^.Kiri := NIL;
  Temp^.Kanan := NIL;
  BARU := Temp;
End;
Procedure MASUK(var defTree: Tree; huruf: Char);
Begin
  If defTree = NIL Then
    defTree := BARU(huruf)
  Else
  Begin
    If defTree^.Info > huruf then
      MASUK(defTree^.Kiri, huruf)
    Else If defTree^.Info < huruf then
      MASUK(defTree^.Kanan, huruf)
    Else
      Writeln('Karakter', huruf, 'Sudah ada di Tree');
  End;
End;

Procedure PREORDER(Temp: Tree);
Begin // <> tidak sama dengan
      // = sama dengan
  If Temp <> NIL Then
  Begin
    Write(Temp^.Info, ' ');
    PREORDER(Temp^.Kiri);
    PREORDER(Temp^.Kanan);
  End;
End;

Procedure INORDER(Temp: Tree);
Begin
  If Temp <> NIL Then
  Begin
    INORDER(Temp^.Kiri);
    Write(Temp^.Info, ' ');
    INORDER(Temp^.Kanan);
  End;
End;

Procedure POSTORDER(Temp: Tree);
Begin // <> tidak sama dengan
  // = sama dengan
  If Temp <> NIL Then
  Begin
    POSTORDER(Temp^.Kiri); {Kunjungi cabang kiri}
    POSTORDER(Temp^.Kanan); {Kunjungi cabang kanan}
    Write(Temp^.Info, ' '); {Cetak isi simpul}
  End;
End;

var
  defTree: Tree;
Begin
  clrscr;

  MASUK(defTree, 'b');
  MASUK(defTree, 'c');
  MASUK(defTree, 'u');
  MASUK(defTree, 'e');
  MASUK(defTree, 'a');
  writeln('PERORDER:');
  PREORDER(defTree);
  writeln;
  writeln('INORDER:');
  INORDER(defTree);
  writeln;
  writeln('POSTORDER:');
  POSTORDER(defTree);
  readln;

  {

  PERORDER:
  b a c u e
  INORDER:
  a b c e u
  POSTORDER:
  a e u c b 7[;1R

  }

end.
