with Ada.Text_IO;
use Ada.Text_IO;

package body Sqrt with SPARK_Mode is
   function Sqrt (X : Float; Tolerance : Float) return Float is
      Result: Float;
   begin
      Result := X;
      if X = 0.0 or X = 1.0 then
         return X;
      end if;
      loop
         Result := (Result + (X / Result)) * 0.5;
         if abs (X - (Result  ** 2)) <= X * Tolerance then
            return Result;
         end if;
         pragma Loop_Invariant(if X < 1.0 then Result < 1.0);
         pragma Loop_Invariant(if X < 1.0 then Result > X);
         pragma Loop_Invariant(if X > 1.0 then Result > 1.0);
         pragma Loop_Invariant(if X > 1.0 then Result < X);
      end loop;
   end Sqrt;
end Sqrt;
