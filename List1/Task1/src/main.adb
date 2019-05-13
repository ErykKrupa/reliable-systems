with Ada.Integer_Text_IO;
with Ada.Numerics.Elementary_Functions;
with Smallest_Factor;
procedure Main is
   N: Positive;
   I: Positive;
begin
   N:=1024;
   Smallest_Factor.Smallest_Factor(N, I);
   Ada.Integer_Text_IO.Put(1024);
   Ada.Integer_Text_IO.Put(N);
   Ada.Integer_Text_IO.Put(I);
   N:=9;
   Smallest_Factor.Smallest_Factor(N, I);
   Ada.Integer_Text_IO.Put(9);
   Ada.Integer_Text_IO.Put(N);
   Ada.Integer_Text_IO.Put(I);
   N:=2017;
   Smallest_Factor.Smallest_Factor(N, I);
   Ada.Integer_Text_IO.Put(2017);
   Ada.Integer_Text_IO.Put(N);
   Ada.Integer_Text_IO.Put(I);
   N:=53;
   Smallest_Factor.Smallest_Factor(N, I);
   Ada.Integer_Text_IO.Put(53);
   Ada.Integer_Text_IO.Put(N);
   Ada.Integer_Text_IO.Put(I);

end Main;
