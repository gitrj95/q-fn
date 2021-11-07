\d .fn
pt:(.{}[;])1;rnkp:()
enq:{[f;x;y]if[1b in(^r),1<r:rnk'(x;y);'`type];$[f;'[y;x];'[x;y]]}
emp:{[f;x;y]if[~-11=@x;'`type];if[-11=@y;y:. y];fx:. x;.[x;();:;enq[f;fx;y]]}

rnk:{$[100=@x;#(. x)1;(@x)in 101 103h;$[enlist~x;0N;1];(@x)in 102 109 110 111h;2;104=@x;[rnkp::. x
   $[(tw:2=#rnkp)&(@)~rnkp 0;.z.s rnkp 1;tw&(.)~rnkp 0;1;[a:0;ix:1;while[ix<#rnkp;ap:."not 104=type()~.fn.rnkp ",$ix
      a+:ap;ix+:1];(.z.s[rnkp 0]|-1+#rnkp)-a]]];105=@x;.z.s[:/. x];106=@x;.z.s[. x];(@x)in 107 108h;$[2=r:.z.s[. x];1;r];'`nyi]}
proj:{[f;ix;a]f .@[rnk[f]#pt;ix;:;a]};projwr:{[f;r;ix;a]f .@[r#pt;ix;:;a]}
enqf:enq 1b;enqb:enq 0b
empf:emp 1b;empb:emp 0b

ty:{$[@x;@x;.z.s'x]}
td:{if[^r:rnk x;'`enlist];$[~r-:1;'[x;{if[~x~ty y;'`type];y}y];'[{if[~y~ty'z;'`type];x . z}[x;y];enlist]]}
ts:{tz:ty'z;while[(#y)&~tz~*y;x_:0;y_:0];(*x). z};tswf:{(x@&y~\:ty'z).\: z}

wa:{m:(*x)y;&$[1=#x;m;{w:&y;@[y;w;:;z x w]}[y]/[m;x]]};atwa:{{x@&y x}/[y;x]}
wo:{m:(*x)y;&$[1=#x;m;|/{z x}[y]\[m;x]]};              atwo:{y wo[x;y]}

