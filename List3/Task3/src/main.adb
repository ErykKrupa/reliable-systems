with Bubble;
with Ada.Text_IO;
use Ada.Text_IO;

procedure Main is
   A : Bubble.Arr := (2, 3, 6, 1, 7);
   B : Bubble.Arr := (2, 3, 6, 6, 7);
   C : Bubble.Arr := (2, 10, 6, 6, 5);
   D : Bubble.Arr := (6, 5, 4, 3, 2, 1, 0, -1);
   E : Bubble.Arr := (0, 0, 1, 0);

begin
        Put(Integer'Image(Integer'First));
   for I in A'Range loop
     Put(Integer'Image(A(I)));
   end loop;
   Put_Line("");

   Bubble.Sort(A);
   for I in A'Range loop
      Put(Integer'Image(A(I)));
   end loop;
   Put_Line("");

   for I in B'Range loop
      Put(Integer'Image(B(I)));
   end loop;
   Put_Line("");

   Bubble.Sort(B);
   for I in B'Range loop
      Put(Integer'Image(B(I)));
   end loop;
   Put_Line("");

   for I in C'Range loop
      Put(Integer'Image(C(I)));
   end loop;
   Put_Line("");

   Bubble.Sort(C);
   for I in C'Range loop
      Put(Integer'Image(C(I)));
   end loop;
   Put_Line("");

   for I in D'Range loop
      Put(Integer'Image(D(I)));
   end loop;
   Put_Line("");

   Bubble.Sort(D);
   for I in D'Range loop
      Put(Integer'Image(D(I)));
   end loop;
   Put_Line("");

   for I in E'Range loop
      Put(Integer'Image(E(I)));
   end loop;
   Put_Line("");

   Bubble.Sort(E);
   for I in E'Range loop
      Put(Integer'Image(E(I)));
   end loop;
end Main;
