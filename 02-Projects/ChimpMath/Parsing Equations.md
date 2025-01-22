![[Drawing 2024-07-10 22.48.55.excalidraw]]

Implementing the [[Shunting Yard Algorithm]]


| Operator | Order of Precedence |
| -------- | ------------------- |
| ^        | 3                   |
| /        | 2                   |
| *        | 2                   |
| +        | 1                   |
| -        | 1                   |
Converts from
**Infix Notation**:  a+b*(c^d-e)^(f+g\*h)-i
to
**Post Notation**: abcd^e-fgh\*+^\*+i-

## Algorithm
**AE** is the arithmetic expression written in infix notation **PE** will be the postfix expression of **AE**
1. Push "(" onto stack, add ")" to the end of AE
2. Scan AE from left to right and repeat step 3 to 6 for each element of AE until the stack is empty
3. If an operand is encountered, append it to PE.
4. if a left parenthesis is encountered, push it onto stack.
5. If an operator is encountered, then: Repeatedly pop from stack and append to PE each operator which has the same Precedence as or higher Precedence than the operator. Add an operator to stack. \[end of if]
6. If a right parenthesis is encountered, then: Repeatedly pop from stack and append to PE each operator until a left parenthesis is encountered. Remove the left Parenthesis. \[End of if] \[End of if]

### Example
5+2/(3-8)^5\^2
$$
5+2/(3-8)^(5^2)
$$

| Token | Action                  | Stack | Output      |
| ----- | ----------------------- | ----- | ----------- |
| 5     | "5" add token to output |       | 5           |
| +     | Push token to stack     | +     | 5           |
| 2     | "2" add token to output | +     | 5 2         |
| /     | Push token to stack     | +/    | 5 2         |
| (     | Push token to stack     | +/(   | 5 2         |
| 3     | "3" add token to output | +/(   | 5 2 3       |
| -     | Push token to stack     | +/(-  | 5 2 3       |
| 8     | "8" add token to output | +/(-  | 5238        |
| )     | Push Token to output    | +/    | 5238-       |
| ^     | Push stack              | +/^   | 5238-       |
| 5     | "5" add token to output | +/^   | 5238-5      |
| ^     | Push token to stack     | +/^   | 5238-5^     |
| 2     | "2" add token to output | +/^   | 5238-5^2    |
| End   | Pop whole stack         |       | 5238-5^2^/+ |
