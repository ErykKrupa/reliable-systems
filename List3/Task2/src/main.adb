with Rev;
with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is
   S1 : String := "qwerty";
   S2 : String := "123";
   S3 : String := "NSI";
   S4 : String := "abc";
   S5 : String := "Spark";
   S6 : String := " ";
begin
   Put(S1 & " -> ");
   Rev.Rev(S1);
   Put_Line(S1);
   Put(S2 & " -> ");
   Rev.Rev(S2);
   Put_Line(S2);
   Put(S3 & " -> ");
   Rev.Rev(S3);
   Put_Line(S3);
   Put(S4 & " -> ");
   Rev.Rev(S4);
   Put_Line(S4);
   Put(S5 & " -> ");
   Rev.Rev(S5);
   Put_Line(S5);
   Put(S6 & " -> ");
   Rev.Rev(S6);
   Put_Line(S6);
end Main;
