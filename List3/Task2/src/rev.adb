package body Rev with SPARK_Mode is
  procedure Rev (S : in out String)
   is
      Str : String := S;
   begin
      for J in S'Range loop
         Str(J) := S(S'First + S'Last - J);
         pragma Loop_Invariant(for all I in S'First .. J => Str(I) = S(S'First + S'Last - I));
      end loop;
      S := Str;
  end Rev;
end Rev;
