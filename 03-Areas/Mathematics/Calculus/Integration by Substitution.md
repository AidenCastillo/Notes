---
dg-publish: true
---

[Integration](./Integrals) when it is single functions is very simple, but once we start adding multiple functions, difficulty increases rapidly. When integrating composite function, we are reversing the Chain Rule.
$$
\int u^ndx = \frac{u^{n+1}}{n+1} + C
$$
Example:
Given $$ \int (x-4)^{10}*dx $$ We could expand the fuction but it will take more time
1. let u = x - 4, then du = 1dx
2. Sub u and du into integrand $$ \int u^{10}dx $$
3. Integrate $$ \int {u^{10}du = \frac{u^{11}}{11} + C} $$
4. Sub back in u $$ \frac{(x-4)^{11}}{11} + C $$
The main difficulty is picking the appropriate function to set equal to u. Objective is to pick a function to replace with u, take the derivative of u to get du. If we can't replace all of the terms in the integrand, we can NOT use substitution and must use another method like [[Integration by Parts]]
![[Integration by Substitution 2025-03-05 09.34.50.excalidraw]]