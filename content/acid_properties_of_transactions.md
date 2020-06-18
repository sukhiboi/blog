---
title: "Acid Properties of Transactions"
date: 2020-06-18T08:14:00+05:30
draft: false
author: "Sukhdev Singh"
tags: ["transactions", "database", "acid", "dbms"]
---

Hello,   
  Today we will learn about the acid properties of a Transaction.

  ACID is an acronym for **A**tomicity **C**onsestency **I**sonlation **D**urability.

  Let's understand what is the use of ACID properties. So if atransaction is intracting with the database, then there's a change that it might make the database inconsistent or maybe result in data loss. This is where ACID properties comes in picture. ACID properties assure that the transaction will change the database such that it will still remain in a consistent state. Simply, if a transaction satisfy ACID properties then it assures that the database will be in a consistent state after the execution of transaction.

  Now let's understand each property one by one.

  **Atomicity:** It means that all the instruction contained in transaction execute or non of them should execute at all, even if it's being executed and some error occur in-between then the  changes should be rolled back to previous state.

  **Consistency:** No transaction should change any data other than what it's allowed to change. Simply, no Trasaction should have any bad effect on data stored in database.

  **Isolation:** It means that a transaction should execute in such a way the it is the only transaction which is using the resources of database. Even if multiple transactiona a being executed simantaneously, no transaction should affect the existance of other transaction. 

  **Durability:** It means that the changes done in the database should persist in the database irresepective of and hardware/software change or faliure. The changedata should be stored in database unless it's again changed.

  Let's understand ACID properties with a help of an example.

  Suppose we both have a bank account in same bank. So our bank details including our balance is stored in the bank's database. Let's assume I have Rs 500 and you have Rs 1000.

  Now you have to give you Rs 600 because you bought a WiFi router from me. You choose to pay the amount via internet banking. So what will be the possible step that will occur during this transfer of money in bank.

  **STEP 1:** Deduct Rs 600 from you account  
  **STEP 2:** Update your new balance i.e. 1000 - 600 = 400  
  **STEP 3:** Credit that amount in my account  
  **STEP 4:** Update my new balance i.e. 500 + 600 = 1100  

  So this is the **Transaction** that will execute to transfer the money from your account to my account.

  Now suppose there a system faliure occur while executing STEP 3. System doesn't add money to account, but deducted it from you account. That's unfair. This means that the transaction executed partially, which is not possible. So this the place where we need that the Transaction must be **atomic**, either it should fully executed that means the money get deducted from your account, and also credited in to my account, or if a error occur the whole transaction should be rolled back means in our case, the money is deducted from you account should be credited back to you.

  Now as you see the money transfer is successfull. You have a new balance of 400 and I have a new balance of 1100. Before this transaction the sum of our money is 1000 + 500 = 1500 and after the transaction it's still 1100 + 400 = 1500, which means our database is still **consistent**. Before the transaction our database is consistent, the transaction is ony allowed to do changes on you account and mine, no other account should be touched. As you see only your and my account got changed and the change consistent.

  Now imagine as we are transfering money over internet banking, there most likly be other people who are transfering money. If you start a transfer at the same time someone else start the another transfer. But your transaction doen't depend on you transaction. Your re transfering money to me. He might be sending money to someone else. Now our transaction should not affect any his transaction and if it's true that means our transaction is **isolated**. That even if our transaction is executed simantenously with other transaction, it only aafect your and my account, no other account should get affeted from it.

  Now we have some money in our bank account. Suppose the software which that bank is using to perform these transaction need to get updated. To update it we have to restart the system. So **durability** assures that after updating the software, you, I and everyone who have account in that bank, should have same amount money they have before system reboot.

  So yeah that's all. Now you undertsand what are ACID properties of a transaction.

  Thanks for reading.
