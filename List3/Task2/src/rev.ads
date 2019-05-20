package Rev with SPARK_Mode is
   procedure Rev (S : in out String)
     with
     Pre => S'First < Positive'Last / 2 and S'Last < Positive'Last / 2,
     Post => (for all I in S'Range => S(I) = S'Old(S'First + S'Last - I));
end Rev;
