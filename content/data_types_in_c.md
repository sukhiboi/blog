---
title: 'Data Types in C'
date: 2020-04-13T00:21:15+05:30
draft: false
author: 'Sukhdev Singh'
tags: ['C', 'C Programming']
---

Hello,  
Today, we will learn about data types in C. So what are types?

To understand it better, let's see what's variable. Variable is just a virtual box that can hold some stuff. In computing that, stuff is some data, like Integer (3, 4) or character ('s'), etc. **So data type is property/attribute of that box which specify which kind of stuff/data this box can hold**.

There are many different types. Let's see the simplest data type.

**INT**

"INT" stands for Integer. This data type states that the variable will store an integer value i.e., 1, 2, 3

Let's write a simple C program to print an integer.

```c
#include <stdio.h>

int main(void)
{
    int sum = 10;
    printf("%d", sum);
    return 0;
}
```

Let's understand this program line by line.

**Line 4**

On this line, we declare a variable and initialize it with 10. But before we go further, let's understand what declaration and initialization mean.  
When you tell C, that you want a variable of some type, but you don't tell C what value it holds, it's a declaration.

```c
int a;
```

This is the declaration.
On the other hand, when you declare a variable and give it a value, then it's mean that you initialize the variable with some value.

```c
int a = 3;
```

Here, we declare a and then initialize it with 3. So now you know what declaration and initialization are. Now let's understand the line 4.  
The line says _"Hey C, I want some space to store an integer. Please give me some space and mark it as 'sum' and put 10 in it."_ So C will allocate some space in memory and mark it as sum's space and give it to sum; also, C will put 10 in that space.

**Line 5**

```c
print("%d", sum);
```

So here he comes, our old friend printf. Ok, everything's fine, but why are we calling him with two things this time and what so special about "%d"?

Well yes, you have noticed that when you run the program, you won't get "%d" printed on your screen, instead value stored in sum shoes up. Before that, we should know something more about printf.

Well, in C printf is a format string. Now, what's that? Well, a format string is a string that contains text and format specifiers. Now whats format specifiers? Well, they tell the printf in which format you should print the given parameter.

So the gist is that printf can print string you want, but it can also print the variables you want, you have to tell it the right format specifier and pass that variable as the second parameter to the call, and it will print it. Now let's see how you can print more than one variable.

```c
#include <stdio.h>

int main(void)
{
    int sum = 10;
    int a = 3;
    int b = 7;
    printf("Sum of %d + %d is %d", a, b, sum);
    return 0;
}
```

So now you see how this all works. Every nth format specifier will map to every nth parameter you passed—the first %d to the first parameter, second %d to the second parameter, and same for the third.

Till now, we understand what data types are how to use them, and we know what **int** is. Let's gather some more knowledge about data types.


|Data type      |What it is      |Format Specifier  |Range                                   |
|:-------------:|:--------------:|:----------------:|:--------------------------------------:|
| int           | Integer        | %d               |-2,147,483,648 to 2,147,483,647         |
| float         | Floating points| %f               |1.2E-38 to 3.4E+38 (6 decimal places)   |
| double        | Floating points| %e               |2.3E-308 to 1.7E+308 (15 decimal places)|
| char          | character      | %c               |0 to 255                                |

And that's all. Now you know how to use different data types for different purposes, and you also know how to access them.

Thank you for reading.