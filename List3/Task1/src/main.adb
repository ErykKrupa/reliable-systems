with Mult;
with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is
function Check(A: Natural; B: Natural) return Boolean is
begin
   return A * B = Mult.Mult(A, B);
end Check;
begin
   if Check(1, 543)
     and Check(13, 682)
     and Check(322, 6542)
     and Check(31299, 8651)
     and Check(9999, 681)
     and Check(10, 686)
     and Check(184, 981)
     and Check(1912, 651)
     and Check(134, 723)
     and Check(184, 1)
     and Check(129, 0)
   then
      Put_Line("Ok!");
   else
      Put_Line("Error!");
   end if;
end Main;
