---
title: "Transactions in Dbms"
date: 2020-06-17T19:19:18+05:30
draft: false
author: "Sukhdev Singh"
tags: ["database", "transactions"]
---

Hello,
  Today we are going to learn about Transactions in Database.

  Transaction is basicallly a set of instruction. A group of cammands that perform some operations on the database.
  Let's understand it this way, You have written a js programm like this
  ```JS 
  fs.writeFileSync('./sample.txt', 'Hello')
  console.log('Half message sent!!');  
  fs.writeFileSync('./sample.txt', 'World')
  ```
  Now in this code each line is a instruction to javascript that do a specific task.

  As in first line we said that, "Hey Javascript, write 'Hello' in a file names 'sample.txt'". Similarly we tell javascript to execute the other lines.

  Now while running the programm, suppose when javascript was executing the line 3rd line, a system faliure occur, by which out program stops. But all the instructions before that are now succesfully executed. When you restart the system you find that in sam.txt 'Hello' is written. But as we know this data is incomplete.

  So in the case of javascript it execute all the instructions before the system failuare occur, but in the case of transactions, if any error occur while executing an instruction the whole process is rolled back.

  If you see this understand this with our javascript example, so when the error occurs on the 3rd line everything happend before that, or every instruction executed before that will be rolled back, meand the next time you start your system you won't find a  file name sample.txt and obviously the 'Hello' also will not remain.

  So the gist is that, a Transaction if a set of instruction, which either executed properly (means every instruction get executed) or it won't happen, even if something get changed, that change will be rolled back.

  And that's all, Well know you know what is a Transactions.

  Thanks for reading.
