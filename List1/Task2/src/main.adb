with Poly;
procedure Main is
   V: Poly.Vector (1..2);
   X: Integer;
begin
   V(1) :=1;
   V(2) :=2;
   X:=2;
      X := Poly.Horner(X, V);
end Main;
