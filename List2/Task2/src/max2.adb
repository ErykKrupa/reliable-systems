with Ada.Text_IO;
package body Max2 with SPARK_Mode is
   function FindMax2 (V : Vector) return Integer is
      Max : Positive;
      Max2 : Integer;
   begin
      Max := V(V'First);
      Max2 := 0;
      for I in V'First + 1 .. V'Last loop
         if (V(I) > Max) then
            Max2 := Max;
            Max := V(I);
         elsif (V(I) > Max2) and V(I) < Max then
            Max2 := V(I);
         end if;
         pragma Loop_Invariant(Max > Max2);
         pragma Loop_Invariant(for all J in V'First .. I => (if V(J) < Max then Max2 >= V(J))); --(Max2 >= V(J) or V(J) = Max));
         pragma Loop_Invariant(for all J in V'First .. I => Max >= V(J));
         pragma Loop_Invariant(for some J in V'First .. I => Max = V(J));
         pragma Loop_Invariant(if (Max2 /= 0) then
                         (for some J in V'First .. I => Max2 = V(J)));
         pragma Loop_Invariant(if (Max2 = 0) then
                         (for all J in V'First .. I =>
                            (for all K in V'First .. I => V(J) = V(K))));
      end loop;
      return Max2;
   end FindMax2;
end Max2;


