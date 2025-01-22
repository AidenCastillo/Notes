Convert infix (3+4*2) into post fix (3 9 2 * +)
Key idea :  use stack to manage Operators and parenthesis
*  Input is an array
## Sudo code
```
Initiate stack for operators : stack
Init queue for output :  output
For each token in input
	If token is number:
		Add to output
	If token is operator:
	   while Operators on stack:
		   pop stack to queue
	   Push current operator to stack
	If token "(":
		push to stack
	If token ")": 
		While operator at top of stack is not "(":
		   Pop operator from stack to queue
After reading all tokens:
	Pop remaining operators to queue
Return queue as postfix expression array
```