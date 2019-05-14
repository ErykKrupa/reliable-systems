with IsPrime;
with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is
begin
   if IsPrime.IsPrime(2) = True
     and IsPrime.IsPrime(3) = True
     and IsPrime.IsPrime(4) = False
     and IsPrime.IsPrime(5) = True
     and IsPrime.IsPrime(25) = False
     and IsPrime.IsPrime(31) = True
     and IsPrime.IsPrime(100) = False
     and IsPrime.IsPrime(101) = True
     and IsPrime.IsPrime(1000) = False
     and IsPrime.IsPrime(1001) = False
     and IsPrime.IsPrime(2017) = True
     and IsPrime.IsPrime(1000000) = False
   then
      Put_Line("Ok!");
   else
      Put_Line("Error!");
   end if;
end Main;
