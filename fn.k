\d .fn

atw:{x@&y z}
rnk:{$[100=@x;#(. x)1;101=@x;1;102=@x;2;104=@x;.z.s[p 0]-c:-1+#p:. x;105=@x;
  .z.s[:/. x];106=@x;1;(@x)in 107 108h;.z.s[. x];(@x)in 109 110 111h;2;'`nyi]}
enqf:{if[1b in 1<rnk'(x;y);'`type];y x@};enqb:{if[1b in 1<rnk'(x;y);'`type];x y@}
empf:{if[~-11=@x;'`type];if[-11=@y;y:. y];f:. x;.[x;();:;enqf[f;y]]};empb:{if[~-11=@x;'`type];if[-11=@y;y:. y];f:. x;.[x;();:;enqb[f;y]]}

