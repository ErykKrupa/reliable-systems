with Ada.Integer_Text_IO;
package body IsPrime with SPARK_Mode is

   function IsPrime (N : in Positive) return Boolean is
   begin
      for I in 2 .. N - 1 loop
         if N rem I = 0 then
            return False;
         end if;
         pragma Loop_Invariant(for all A in 2 .. I => N rem A /= 0);
      end loop;
      return True;
   end IsPrime;
end IsPrime;
