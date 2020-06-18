---
title: "Minimum Spanning Tree - Krushkal Algorithm"
date: 2020-06-18T00:03:01+05:30
draft: false
author: "Sukhdev Singh"
tags: ["mst", "Minium Spanning Tree", "Krushkal", "Graphs"]
---

Hello, 
  Today we are going to learn about the krushkal algorithm of finding a minium spanning tree.
  If you don't know what is a minium spanning tree then please go and study about it on this blog post.

  The krushkal's aglorithm says that you have to pick the edge 
  - which has least weight in the graph,
  - wont make cycle in the tree

  And after that pick the next edge which is second lightest in weight, then third, then fourth..... and so on.  So yeah this is the algorithm. Let's go through this algorith through a example.

  Here is a sample graph.

![graph](/blog/images/krushkal_algorithm/1.jpg#postImage)

  So right now our tree is empty.
  Let's start working on algorithm.

  So first we need to pick the edge with least weight. Yup you got it correct. The lightest edge is (1 - 6), it weights 10. So adding this edge to our existing tree (which is currently empty) won't make the tree cyclic. So we add this edge to our tree. Cool we got our first edge. Let me highlight that edge, so that we keep track of what edges left.

![graph](/blog/images/krushkal_algorithm/2.jpg#postImage)

  So, again we have to do the same step. Now whats the edge with least weight. Remember don't check the edge (1 - 6) because we already check it. So yeah whats the least weighted edge from the available one's. Wow you are correct again. Yes it is (4 - 3), it weight 12, which is the next lightest edge. Let me mark it. Cool, now onwards you just tell me what's the next lightest edge and I'll will mark it.

![graph](/blog/images/krushkal_algorithm/3.jpg#postImage)

  Ok tell me the next lightest edge??...........Yup exactly, it's (7 - 2) it weights' 14. Remember it's a undirected graph so the weight of edge (7 - 2) will be same as (2 - 7), but in the case of directed graph this might not be true, or even, you won't have connection, like you have connection from node 2 to 7, but you won't have connection from 7 to 2.

![graph](/blog/images/krushkal_algorithm/4.jpg#postImage)

  Ok let's continue, What's the next edge????.........True it's (2 - 3) it weight's 16. But wait, the previous edge that we entered to tree also have the node 2. I believe we should check wheater entering this edge make the tree cyclic or not.... Well no it won't make the tree cyclic so we can add this edge. Don't forget the second condition of the algorith.

![graph](/blog/images/krushkal_algorithm/5.jpg#postImage)

  Ok what's the next edge???.........(7 - 4).....Are you sure??? I mean yeah it's true that it's the lightest edge from the available edges, but I remember that some of the edges we entered previously contains 7  and 4 both. I insist you to check wheather adding this edge make our tree cyclic or not. Ohh see I told you no. If we add this edge we have cycle in our tree i.e (7 - 2) (2 - 3) (3 - 4) (4 - 7). In this case we will skip this edge because it doesn't match the criteria of described in the algorithm. So we skip this edge.

  What's next???....Yup absolutely (4 - 5) it weight's 22. Did you check wheather it make cycle in tree or not. Good let's continue.

![graph](/blog/images/krushkal_algorithm/6.jpg#postImage)

  Next???......(5 - 7)....wait no...(5 - 6) YES!!! You got it correct, because (5 - 7) will create a cycle in the tree.

![graph](/blog/images/krushkal_algorithm/7.jpg#postImage)

  Next???.....Well we left we left with only one edge, which if we add it will create a cycle in the tree. Yes so now we got our minimum spanning tree, because there is no edge left to examine.

  Congratulation, we got our minimum spanning tree. Just look at the graph now, It looks so intersting. Now there also something you should observe, that there is no cycle in highlighted graph, also each node is connected and can be accessed from any other node.

![graph](/blog/images/krushkal_algorithm/7.jpg#postImage)

  Let me now explain you the algorithm in a more technical way...

  **STEP 1:** Pick the edge with the least weight from the available edges.   
  **STEP 2:** If that edge doens't make the tree cyclic add it to tree else goto STEP 1 again until you ran out of the available edges.

  A good way to start is to get a list of all the edges available in the graph and sort them based on thier weight. Now every time you pick the first edge it will be the lightest from the available edges.

  Also you can check wheather a edge make tree cyclic or not just by checking these 2 things
  - It should not be self loop.
  - One of it's vertex should not present in the tree.

  If the edge satisfy these 2 criteria then adding this edge won't make any cycle in your tree.

  Well, That's all, Now you know how krushkal's algorithm works.

  Thanks for reading.
