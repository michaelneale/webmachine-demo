%% @author author <author@example.com>
%% @copyright YYYY author.
%% @doc Example webmachine_resource.

-module(webmachine_demo_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

hello() -> 
    case os:getenv("MESSAGE") of 
        false -> "";
        Msg -> Msg
    end.    

to_html(ReqData, State) ->
    io:format("~p~n", [hello()]), %% reading a system property
    {"<html><head><title>CloudBees and Erlang</title></head><body background='http://www.cloudbees.com/sites/all/themes/custom/cloudbees_zen/images/inner_background.jpg'>
            <h1><img src='http://www.cloudbees.com/sites/all/themes/custom/cloudbees_zen/css/bidesign/_ui/images/logo.png'> ERRRLLALLLAAANNNGGGG</h1><p>
            <iframe width='420' height='315' 
            src='http://www.youtube.com/embed/uKfKtXYLG78?autoplay=1' 
            frameborder='0' allowfullscreen>
            </iframe>
            <p><h2>How ?</h2>Using 
            <a href='http://developer.cloudbees.com/bin/view/RUN/ClickStack'>ClickStacks.</a>
            <p><p><p>
            <i><a href='http://developer.cloudbees.com'>developer.CloudBees.com</a></body></html>", ReqData, State}.
