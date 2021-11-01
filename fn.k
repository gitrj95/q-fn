\d .fn
pt:(.{}[;])1

enq:{[f;x;y]if[1b in 1<rnk'(x;y);'`type];$[f;y x@;y x@]}
emp:{[f;x;y]if[~-11=@x;'`type];if[-11=@y;y:. y];fx:. x;.[x;();:;$[f;enqf;enqb]enqf[fx;y]]}
ty:{$[@x;@x;.z.s'x]}

rnk:{$[100=@x;#(. x)1;101=@x;1;102=@x;2;104=@x;[p:. x;$[(@)~p 0;.z.s p 1;(.)~p 0;1;.z.s[p 0]--1+#p]]
  105=@x;.z.s[:/. x];(@x)in 106 107 108 109 110 111h;.z.s[. x];'`nyi]}
proj:{x .@[rnk[x]#pt;z;:;y]}
enqf:enq 1b;enqb:enq 0b
empf:emp 1b;empb:enq 0b
td:{enqf[enlist]{if[~y~ty z;`'type];x . z}[x;y]};tdws:{td[x;ty y]}
ts:{tz:ty z;while[~(#y)&z~*y;x_:0;y_:0];(*x). z}
tswf:{(x@&y~\:ty z).\: z}
