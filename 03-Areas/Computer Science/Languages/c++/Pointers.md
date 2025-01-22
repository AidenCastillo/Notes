---
link: https://www.notion.so/Pointers-28dcd05094df4a7283214bc803cb9b3f
notionID: 28dcd050-94df-4a72-8321-4bc803cb9b3f
---

# Address of Operator (&)

Take the code:
```cpp
int main()
{
    char x {}
    char& ref { x };
    return 0;
}
```
The use of the & in the 4th line returns the memory address of the assigned variable x. If you were to print the new variable. 

When used in addition to the Dereference operator * you can get the actual variable at the assigned address

```cpp
int main()
{
	char x { 5 };
	std::cout << x << '\n';
	std::cout << &x << '\n';
	
	std::cout << *(&x) << '\n';
	
	return 0;
}
```
```
5
0027FEA0
5
```
# Pointer 

Specifically, a pointer is a object that holds a memory address of another variable. 

```cpp
int; // normal integer
int&; // address reference to variable

int*; // a pointer to a int value(holds address of the integer value)
```

We create the pointer just as we could the address operator

```cpp
int main()
{
    int x { 5 };    // normal variable
    int& ref { x }; // a reference to an integer (bound to x)

    int* ptr;       // a pointer to an integer

    return 0;
}
```

Always initialize your pointers for best practice. Make sure your pointer is defined to a known value.

```cpp 
int x{ 5 }

int* ptr; // bad practices

int* ptr2{ &x } // a pointer initialized with the address of variable x
``` 

Once we have a pointer, we can call the value of the object by using the dereference operator.

```cpp
#include <iostream>

int main()
{
    int x{ 5 };
    std::cout << x << '\n'; // print the value of variable x

    int* ptr{ &x }; // ptr holds the address of x
    std::cout << *ptr << '\n'; // use dereference operator to print the value at the address that ptr is holding (which is x's address)

    return 0;
}
```
```
5
5
```

Calling a pointer just by its variable name will return the address that the pointer holds, IT WILL NOT return the value that is stored at that place in memory.

```cpp
std::cout << ptr << '\n' // returns 0012FF60
std::cout << *ptr << '\n' // returns 5
```
