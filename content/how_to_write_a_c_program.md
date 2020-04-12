---
title: "How to Write a C Program"
date: 2020-04-11T16:50:43+05:30
draft: false
author: "Sukhdev Singh"
tags: ["C Programming", "C"]
---

Hello,  
I know you came here to understand how to write a C program. But before we write a C program, I think first we should learn some basic things about C.  

Well C was developed by Dennis M. Ritchie and first implemented in 1972 at Bell Labs. C is a language that deals with low-level stuff like memory, but the exciting part is that it is written in a high-level language. Any programming language is called HLL (High-Level Language), when it's code is easier to read by humans. C is a high-level language. This concludes that the code of C is pretty easy to read and understand.  

For now, this much knowledge is sufficient, let's do some digging in the working world.

A file which contains a C program will always have an extension of **.c**, for example, **example.c**

What can be the simplest program to write in C? Yes, you are correct. The simplest program will be to print something on the screen.

Let us go step by step to write a C program that will print "Hello" on the screen.

**Step 1**  
Open any text editor in your computer and then type the following code in the editor and save the file as "hello.c" to any directory/folder you like.

```c
#include <stdio.h>

int main(void)
{
    printf("Hello");
    return 0;
};
```

We will understand this code in a bit.

**Step 2**   
Open up your terminal, and go to that directory and run the following commands.

```bash
$ gcc hello.c
$ ./a.out
```

Once you run the second command, WOW suddenly "Hello" appears on the screen. Now you know how to run a C program. Now let's take a look at what happened behind the scenes.

At our first step, we wrote some code. Let's understand the meaning of each line and what each line is doing.

**Line 1**

```c
#include <stdio.h>
```

In this line, we are telling C, "*Hey C, I want some help from a friend of yours, i.e., stdio. Can you call him please* ".

Actually stdio stands for **ST**an**D**ard **I**nput **O**utput. **stdio.h** is a file that contains some functions which deal with input and output devices. So as we are printing something on the screen, which means that we want C to use/interact with the screen, which is an output device.

So, the gist of this whole para is that C will allow our program to access the function of stdio.h to use the screen, specifically in this program, it will enable us to print something on the screen.

**Line 2**

```c
int main(void)
```

This is an interesting line. On this line, we start telling C what we want to do. I know you have some questions regarding what is **int** and **void**, we will cover them in the upcoming posts. For now, assume that this is the starting point from which we have to write the actual code.

You notice these things in the code we wrote to **hello.c**

```c
{

}
```
These are called a block. You have to write your code in these blocks. Here **{** open parenthesis means **start of the block** and **}** close parenthesis means **end of the block**.

**Line 3**

```c
printf("Hello")
```

Aha!! This is the most crucial line in the code we wrote. This is the line that tells C to print something on the screen. So how printf works. Well, the answer is simple; you have to call printf. You have to write printf then call it with **brackets ()** and tell it to print a word in double **quotes ""**

---
**Interesting Fact**  
printf is the reason why we included stdio.h. We are using printf, which lives in stdio.h.

---

I know we skipped line 4 because I think this is not the right time to dive into that stuff. For now, we should assume that you need to write that line after you write code.

So this is all about the code. Now let's understand what happens when we ran those other commands in the terminal.

**Command 1**

```bash
gcc hello.c
```

The first thing that hits the mind is what is **gcc**. Well, for now, think of gcc as a person who is responsible for checking your code that whether it's correct or not. If your code has problems, it will show error(s). **If not, then it will generate another file that your computer understands**. This whole process is known as **compilation**. When you run this command, it will compile your code and create another file written in machine-level code (which is the only computer can understand, specifically the computer which compiles the code). By default gcc always generate a file named as **a.out**

**Command 2**

```bash
./a.out
```

At this point, your code is converted to machine-level code, and your computer can understand. Now we just need to run it. So this command will run that machine-level code and shows you the output.

And that's all. Well, now you know how to write a simple C program that prints something on the screen.

Thank you for reading.