\d .fn
pt:(.{}[;])1;rnkp:()

rnk:{$[100=@x;#(. x)1;(@x)in 101 103h;$[enlist~x;0N;1];(@x)in 102 109 110 111h;2;104=@x;[rnkp::. x
   $[(tw:2=#rnkp)&(@)~rnkp 0;.z.s rnkp 1;tw&(.)~rnkp 0;1;[a:0;ix:1;while[ix<#rnkp;ap:."not 104=type()~.fn.rnkp ",$ix
      a+:ap;ix+:1];(.z.s[rnkp 0]|-1+#rnkp)-a]]];105=@x;.z.s[:/. x];106=@x;.z.s[. x];(@x)in 107 108h;$[2=r:.z.s[. x];1;r];'`type]}

ty:{$[@x;@x;.z.s'x]};td:{if[^r:rnk x;'`enlist];$[1=r;'[x;{if[~x~ty y;'`type];y}y];'[{if[~y~ty'z;'`type];x . z}[x;y];enlist]]}
ts:{tz:ty'z;while[(#y)&~tz~*y;x_:0;y_:0];(*x). z};tswf:{(x@&y~\:ty'z).\: z}
dp:td[{0>@!x};ty`]

proj:{[f;ix;a]f .@[rnk[f]#pt;ix;:;a]};projwr:{[f;r;ix;a]f .@[r#pt;ix;:;a]}
dcmp:td[{$[105=@x;.z.s[vx 1],.z.s(vx:. x)0;99<@x;x]};105h]
enq:{[f;x;y]if[1b in(^r),1<r:rnk'(x;y);'`type];$[f;'[y;x];'[x;y]]}
emp:{[f;x;y]if[b:dp x;dx:. x];if[-11=@y;if[~99<@y:. y;'`type]];.[x;();:;$[b;enq[f;dx;y];y]]}
pop:{[f;x]dx:. x;$[105=@dx;fx:dcmp dx;'`type];cfx:$[f;(0;-1+#fx)_fx;|0 1_fx];.[x;();:;enqf/cfx 0];*cfx 1}

enqf:enq 1b;empf:emp 1b;popf:td[pop 1b;-11h]
enqb:enq 0b;empb:emp 0b;popb:td[pop 0b;-11h]

m:{y,:();x/y@\:z};pm:{y,:();x/{y x}[z]':y};m1:{m:(*y)z;$[1=#y;m;{w:&x[0]y;@[y;w;:;z x[1]w]}[(x;z)]/[m;y_:0]]}

ma:m[&];wa:&ma::
pma:pm[&];pwa:&pma::
ma1:m1[::];wa1:&ma1::
mo:m[|];wo:&mo::
pmo:pm[|];pwo:&pmo::
mo1:m1[~:];wo1:&mo1::

ie:{[m;x;f;g]("j"$m x)'[g x;f x]};ie1:{[m;x;f;g]w:=m x;@[;w 1b;f]@[;w 0b;g]x}

