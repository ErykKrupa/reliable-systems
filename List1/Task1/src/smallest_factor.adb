package body Smallest_Factor with
   SPARK_Mode
is
   procedure Smallest_Factor (N : in out Positive; Factor : out Positive) is
   begin
      Factor := 2;
      loop
         exit when N rem Factor = 0;
         pragma Loop_Invariant(Factor < N);
         -- pragma Loop_Invariant (for all I in 2 .. Factor => N rem I /= 0);
         pragma Loop_Invariant (N rem Factor /= 0);
         Factor := Factor + 1;
      end loop;
      pragma Assert(N rem Factor = 0);
      N := N / Factor;
   end Smallest_Factor;
end Smallest_Factor;

