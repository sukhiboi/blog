---
title: "Minimum Spanning Tree - Prims Algorithm"
date: 2020-06-18T13:40:12+05:30
draft: false
author: "Sukhdev Singh"
tags: ["mst", "Minium Spanning Tree", "Prims", "Graphs"]
---

Hello, Today we are going to learn about the Prims algorithm of finding a minium spanning tree. If you don’t know what is a minium spanning tree then please go and study about it on this blog post.

So Prims algoritms says that start from a random vertex from tree put it in tree. Find all the neighbours of all the nodes in the tree excluding the one's which are already in the tree. Now pick the vertex with smallest distance and add it to the tree. Repeat this until no vertex left in the graph which is not in tree.

Now we know the theroy, let's understand the algorithm through an example.

Here is a sample graph.

![graph](/blog/images/prims_algorithm/1.jpg#postImage)

  So right now our tree is empty. Let's start working on the algorithm.

  So first we need to pick a random vertex. Let's pick 7. Ok we pick 7, now accoring to algorithm let's add this to tree. 

![graph](/blog/images/prims_algorithm/2.jpg#postImage)

  Well now our tree have one node. Acc. to algorithm let's see who are the neighbours of 7. Ok there a 3 neighbours, 5, 2 and 4. Now let's see who is closest to us. Yup right, 2 is closer than others, Let's add it to tree.  Also I will highlight every node we select in this process step by step.

![graph](/blog/images/prims_algorithm/3.jpg#postImage)

  Cool now we have 2 nodes in the tree now. Let's examine the neighbours of both the nodes. Ok so 7 have 3 neighbours 5, 2, and 4 but we already have 2 in our tree, so we won't consider it. So 7 have 2 unvisited ( didn't added to tree yet ) neighbours and 2 have two neighbour 3 and 1. So the next possible vertex which can be added to tree will be one of 5, 3, 1, or 4. Now from any one of the vertex which are in tree, whose neighbour is least far away from them. Let me explain this a bit. So we have 5 which is 24 units away from 7, we have 4 which is 28 units away from 7, we have 1 which is 28 units away from 2, also we have 3 which is 16 units away from 2. Now if you consider all the 4 neighbour which one is closest. Yes 3 is closest. Let's add 3 to the tree.

![graph](/blog/images/prims_algorithm/4.jpg#postImage)

  Now we have 3 nodes in the tree. Let apply the same process again. Now what all the neighbours we have that we need to consider??? Yes we have 3 neighbours. Let me list them for you. 5 and 4 which are neighbours of 7, 1 which is neighbour of 2, 3 have a neighbour 4, but we already count that because it's the neighbour of 7, so we won't count 4 again. Now, who's the closest???? Correct 4 is closer, but not as the neighbour of 7 but as the neighbour of 3. So we will add 4 to the tree.

![graph](/blog/images/prims_algorithm/5.jpg#postImage)

  Cool now we have 4 nodes in our tree. Now tell me all the neighbour nodes we have, don't include one's we alreadt visited. So how many neighbours we have to pick the next node from????? Yup we have 2 neighbours 5 and 1, Ok which one should I pick, Offcourse 5. Ok the 5 is the neighbour of 7 I'll pick it. NO look 5 can be reached by both 7 and 4, but the 5 is more closer to 4 than 7. Remember we have to pick the closest one. Exactly now you got it correct. let's add 5 which is the neightbour of 4.

![graph](/blog/images/prims_algorithm/6.jpg#postImage)

  Cool now we have 5 nodes in the tree. Now ame question again, tell me the neighbours..... 6 and 1. Yup exaclty we have 2 neighbours left. Ok which one should I pick...... 6. Boom, you got it. Let me add 6 which is the neighbour of 7.

![graph](/blog/images/prims_algorithm/7.jpg#postImage)

  Wow now we have only one vertex remaining 1, I have to add it to tree, but 1 is the neighbour of 6 and 2. From which one i should choose???? Ofcourse from 6 because from there it's the least distance to 1. Correct.

![graph](/blog/images/prims_algorithm/8.jpg#postImage)

  Well now no vertex left, means we did it, we found the minium spanning tree from prims algorithm. Now have a look at the graph, isn't it look inresting. What we build is a minium spanning tree because it contains all the vertex of graph also, it doens't contain any cycles.

![graph](/blog/images/prims_algorithm/8.jpg#postImage)

  Now let me explain it to you in a technical way.

  **STEP 1:** Pick a random vertx from the graph   
  **STEP 2:** Add it to tree   
  **STEP 3:** Get all the neighbour node of all the nodes in tree and select the node which has the least distance from the node you looking from. Add that node to tree also. Repeat this step until no vertes left. ( Don't add any already added vertex to tree)

  A good advice to approach this problem is to make 2 list, one of unvisited vertecies i.e the vertex which are not in tree ( initially all the vertecies of the graph ), and another one which contains all the visited vertecies that contains the vertecies which are already in the tree. Now we you have looke from one vertex just remove it from unvisited and put it in visited. This way it's easier to track what all vertecies are left to visit.

  Well that's all now you know how prims algorithm works.

  Thanks for reading.

