# chatlive
22/6/23 - Stuck in production : socket automatically closed while work well on local linux machine
23/6/23 - Thinking : Port is the problem. => tried to allow all firewall => not work
24/6/23 - Got a clue that port is the problem:
            - on Windows 10
            - socket connected through localhost:4444 not work
            - but socket through localhost:12345 work
            - have no idea to solve yet
25/6/23 - Suprise in production : after many times I create and delete my cloud server, it work
        - But I shut down and turn it on again => back to stuck (wtf)

move on other project. 

