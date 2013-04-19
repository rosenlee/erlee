% m1.erl
% Luocheng 
% 2013-4-19
%% usage: complime it as c(m1,{d,debug}).

-module(m1).
-export([start/0]).

-ifdef(debug).
-define(TRACE(X),io:format("TRACE ~p:~p ~p~n", [?MODULE,?LINE,X])).
-else.

-define(TRACE(X),void).
-endif.

start() -> loop(5).

loop(0) -> void;

loop(N) -> ?TRACE(N) , loop(N-1) . 



