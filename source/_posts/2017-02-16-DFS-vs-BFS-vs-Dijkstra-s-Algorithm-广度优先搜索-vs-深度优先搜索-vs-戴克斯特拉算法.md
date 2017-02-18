---
title: DFS vs BFS vs Dijkstra's Algorithm || 广度优先搜索 vs 深度优先搜索 vs 戴克斯特拉算法
date: 2017-02-16 10:39:09
tags:
---


G == Graph  
V == Vertices in Graph&emsp;&emsp;E == Edges in Graph  
b == begin vertex&emsp;&emsp;u == origin vertex  
v == next vertex&emsp;&emsp;w == distance from u to v  


    dfs(G)
        for each v in V
            visited[v] = false;
        for each v in V
            if !visited[v]
                explore(G, v)

    explore(G, v)
        visited[v] = true
        for each (u, v) in E
            if !visited[v]
                explore(G, v)

---


    bfs(G, b)
        for each v in V
            distance[v] = ∞
            from[v] = null
        distance[v] = 0

        Q = new queue()
        Q.enq(b)

        while !Q.isEmpty()
            u = Q.deq()
            for each edge (u, v) in E
                if distance[v] = ∞
                    distance[v] = distance[u] + 1
                    from[v] = u
                    Q.enq(v)

---


    dijkstra(G, b)
        for each v in V
            distance[v] = ∞
            from[v] = null
        distance[v] = 0

        PQ = new PriorityQueue(|V|)
        PQ.insertOrUpdate(b, 0)

        while !PQ.isEmpty()
            u = PQ.deleteMin()
            for each edge (u, v, w) in E
                if distance[v] > distance[u] + w
                    distance[v] = distance[u] + w
                    from[v] = u
                    PQ.insertOrUpdate(v, distance[v])
