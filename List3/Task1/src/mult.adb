package body Mult with SPARK_Mode is
  function Mult (A : Natural; B : Natural) return Natural
is
   AB : Natural := 0;
   AA : Natural := A;
   BB : Natural := B;
   begin
   while BB > 0 loop
      pragma Loop_Invariant(AB + (AA * BB) = A * B);
      if BB mod 2 = 1 then
         AB := AB + AA;
      end if;
      AA := 2 * AA;
      BB := BB / 2;
   end loop;
      return AB;
  end Mult;
end Mult;
