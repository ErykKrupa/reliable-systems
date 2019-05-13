package body Poly with
   SPARK_Mode
 is

   function Horner (X : Integer; A : Vector) return Integer is
      R : Integer := 0;
      V : Integer := 0 with Ghost;
   begin
      for I in reverse A'Range loop
         R := R * X + A (I);
         V := V + (A (I) * (X**(I - A'First)));
           pragma Loop_Invariant (V = R * (X**(I - A'First)));
      end loop;
      pragma Assert(R=V);
      return R;
   end Horner;

end Poly;
