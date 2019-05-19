with Sqrt;
with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is
function Check(X: Float; Tolerance: Float) return Boolean is
begin
   return (X - (Sqrt.Sqrt(X, Tolerance) ** 2)) / X <= Tolerance;
end Check;
   Tolerance: Float;
begin
   Tolerance := 0.000001;
   if Check(1.1, Tolerance)
     and Check(123.123, Tolerance)
     and Check(32.312, Tolerance)
     and Check(312312.99, Tolerance)
     and Check(999.999, Tolerance)
     and Check(1.1E10, Tolerance)
     and Check(1.654E4, Tolerance)
     and Check(1.90E12, Tolerance)
     and Check(1.1E4, Tolerance)
     and Check(1.0E04, Tolerance)
     and Check(1.8E19, Tolerance)
   then
      Put_Line("Ok!");
   else
      Put_Line("Error!");
   end if;
end Main;

