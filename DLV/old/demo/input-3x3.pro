% Why does this example w/ current encoding generate 82 PWs?

%% [ASP :)]$ time dlv rcc-asp.dlv input-3x3.dlv -silent | wc
%%     3686  311003 3310266

%% real	0m0.933s
%% user	0m0.933s
%% sys	0m0.022s

% Compare with Shizhuo's RCC PW reasoner:
%% [Bertram-tutorial :)]$ time euler2 align tap3x3.txt -r rcc2pw > /dev/null
%% real	0m4.664s
%% user	0m4.601s
%% sys	0m0.051s

% INPUT TAP 

% T1
pp(b,a). pp(c,a). pp(d,a).
dr(b,c). dr(c,d). dr(b,d).

% T2
pp("B","A"). pp("C","A"). pp("D","A").
dr("B","C"). dr("C","D"). dr("B","D").

% Articulations
eq(a,"A").

