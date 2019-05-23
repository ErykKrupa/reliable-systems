with Ada.Text_IO;
use Ada.Text_IO;

package body Bubble with SPARK_Mode is
   procedure Sort (A : in out Arr)
   is
      tmp : Integer;
   begin
      for I in reverse A'First .. A'Last - 1 loop
         for J in A'First .. I loop
            tmp := A(J);
            if (A(J) > A(J + 1)) then
               A(J) := A(J + 1);
               A(J + 1) := tmp;
            end if;
            pragma Loop_Invariant(A(J) = tmp or A(J + 1) = tmp);
            pragma Loop_Invariant(for some K in A'Range =>
                                    A(K) = tmp or A(K) = tmp);
            pragma Loop_Invariant(for all K in A'First .. J =>
                                    A(K) <= A(J + 1));
         end loop;
         pragma Loop_Invariant(for all K in A'First .. I =>
                                 A(K) <= A(I + 1));
      pragma Loop_Invariant(Bubbled(A));
      end loop;
      pragma Assert(Sorted(A));
   end Sort;

end Bubble;
