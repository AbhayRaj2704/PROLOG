% Define the graph
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(d, g).
edge(e, g).
edge(f, g).

% Check whether two nodes are connected
connected(X, Y) :- edge(X, Y).
connected(X, Y) :- edge(Y, X).

% BFS to find the shortest path
bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

bfs_queue([[Goal|Rest]|_], Goal, [Goal|Rest]).

bfs_queue([[Current|Rest]|Queue], Goal, Path) :-
    findall(
        [Next, Current|Rest],
        (connected(Current, Next),
         \+ member(Next, [Current|Rest])),
        NewPaths
    ),
    append(Queue, NewPaths, UpdatedQueue),
    bfs_queue(UpdatedQueue, Goal, Path).