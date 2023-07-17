# Run on server
Change "locahost" to server's IP in Frontend/src/app/socket.service.ts
```sh
chmod +x start.sh
```
```sh
docker-compose up -d
```
# Personal log
22/6/23 - Stuck in production : socket automatically closed while work well on local linux machine
23/6/23 - Thinking : Port is the problem. => tried to allow all firewall => not work
24/6/23 - Got a clue that port is the problem:
            - on Windows 10
            - socket connected through localhost:4444 not work
            - but socket through localhost:12345 work
            - have no idea to solve yet
25/6/23 - Suprise in production : after many times I create and delete my cloud server, it work
        - But I shut down and turn it on again => back to stuck

26/6/23 - Problem is resolved 
        - Reason: client's browser called its localhost, didn't call to server
        - Solve: point IP in constructor of socket service frontend to server IP.
        - Explain: At first, I point socket service to localhost IP because I think frontend run on server and point to localhost is the same with pointing to server. But I realize frontend is runtime on client's browser, so it will call client's browser localhost.



