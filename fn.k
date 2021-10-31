\d .fn

PT:(.{}[;])1

rnk:{$[100=@x;#(. x)1;101=@x;1;102=@x;2;104=@x;[p:. x;$[(@)~p 0;.z.s p 1;(.)~p 0;1;.z.s[p 0]--1+#p]]
  105=@x;.z.s[:/. x];(@x)in 106 107 108h;.z.s[. x];(@x)in 109 110 111h;2;'`nyi]}
proj:{x .@[rnk[x]#PT;z;:;y]}
enqf:{if[1b in 1<rnk'(x;y);'`type];y x@}
enqb:{if[1b in 1<rnk'(x;y);'`type];x y@}
empf:{if[~-11=@x;'`type];if[-11=@y;y:. y];f:. x;.[x;();:;enqf[f;y]]}
empb:{if[~-11=@x;'`type];if[-11=@y;y:. y];f:. x;.[x;();:;enqb[f;y]]}


