with Max2;
with Ada.Text_IO;
use Max2;

procedure Main is
   V1: Vector := (1, 2, 1);
   V2: Vector := (1, 2, 3, 9, 8, 8, 8);
   V3: Vector := (1, 2, 3, 8, 8, 8, 8);
   V4: Vector := (6, 6, 6, 6, 6, 6);
   V5: Vector := (10, 9, 8, 7, 6);
   V6: Vector := (4, 4, 5, 4, 4, 4);
   V7: Vector := (3, 9);
begin
   if FindMax2(V1) = 1
     and FindMax2(V2) = 8
     and FindMax2(V3) = 3
     and FindMax2(V4) = 0
     and FindMax2(V5) = 9
     and FindMax2(V6) = 4
     and FindMax2(V7) = 3
   then
      Ada.Text_IO.Put_Line("Ok!");
   else
      Ada.Text_IO.Put_Line("Error!");
   end if;
end Main;
