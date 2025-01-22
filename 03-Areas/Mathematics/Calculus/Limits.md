$$
\lim_{x\rightarrow\infty}f(x)= L
$$

A limit is the value that a function approaches as the argument approaches some value. Used to define continuity, derivatives, and integrals.
It explains how a function behaves near a point, rather than at a point. 

Let `L` be a real number. If all values of the function f(x) approach a real number `L` as the values of x ($x \not= a$) approaches the number `a`, then we say that the limit of f(x) as x approaches a is `L`. As x gets closer to a, f(x) gets closer and stays close to L.
$$
\lim_{x->a}f(x)=L
$$
Keep in mind, a limit of a function to exist at a point, the functional values (y) must approach a single real-number value at that point. If the functional values do not approach a single value, then a limit does not exist. Ex. 1/sin(x)

## One-Sided Limits
For all values to the left of a, the function approaches L. Symbolically we express this idea as 
$$
\lim_{x->2^-}g(x) = -1
$$
From the right (or positive side)
$$
\lim_{x->2^+}g(x) = 1
$$
## Limit Properties
Assume that $\lim_{x->a}f(x)$ and $\lim_{ x \to a }g(x)$ exist and that c is any constant then,
1.  **Sum Rule**  - States that the limit of the sum of two functions is equal to the sum of their limits$$\lim_{ x \to a } [f(x)+g(x)] = \lim_{ x \to a } f(x) + \lim_{ x \to a } g_{9}x)$$
2. **Constant Function Rule** - Limit of a constant is the constant $$\lim_{ x \to a } C = C$$
3. **Constant Multiple Rule** - Limit of a constant times a function is equal to the product of the constant and the limit of the function $$\lim_{ x \to a } kf(x) = k\lim_{ ix \to a } f(x)$$
4. **Product Rule** - Limit of the product of two functions is the product of their limits (if they exist) $$\lim_{ x \to a } [f(x)g(x)] = \lim_{ x \to a } f(x) \times \lim_{ x \to a } g(x)$$
5. **Quotient Rule** - Limit of quotient of two functions is the quotient of their limits, as long as that the limit in the denominator is not zero. $$\lim_{ x \to a } \frac{f(x)}{g(x)} = \frac{\lim_{ x \to a } f(x)}{\lim_{ x \to a } g(x)}, \lim_{ x \to a } g(x) \not= 0$$
6. **Power Rule** - $$\lim_{ x \to a } \sqrt[p]{ f(x) } = \sqrt[p]{ \lim_{ x \to a } f(x) }$$ if $f(x) = x^n$, then $$\lim_{ x \to a } x^n = a^n, n =0, \pm 1, \pm 2\dots \cap a \not= 0, ~if~n \leq 0$$
7. **Limit of an Exponential Function** - $$\lim_{ x \to a } b^{f(x)} = b^{\lim_{ x \to a } f(x)}$$ where base $b > 0$
8. **Limit of a Logarithm of a Function** - $$\lim_{ x \to a } [\log_{b}f(x)] = \log_{b}[\lim_{ x \to a } f(x)]$$ where base $b>0$
## The Squeeze Theorem 
Suppose $g(x) \leq f(x)\leq h(x)$ for all $x$ close to $a$, except perhaps for $x=a$. If $$\lim_{ x \to a } g(x)=\lim_{ x \to a } h(x)=L$$then $$\lim_{ x \to a } f(x) = L$$The idea here is that the function f(x) is squeezed between two other functions having the same limit $L$.
![[Drawing Squeeze Theorem.excalidraw]]
As $g(x)$ and $h(x)$ get closer together and the distance between their value decrease at point $a$, we are able to determine the limit of $f(x)$ as long as $g(x) <= f(x) <= h(x)$ remains true. $f(x)$ must remain between the two other functions, being  *SQUEEZED TOGETHER*.
## Types of Limits
![[Types of limits 2025-01-22 01.20.00.excalidraw]]

### Problems
1. Given $\lim_{ x \to 8 }f(x) = -9$, $\lim_{ x \to 8 }g(x) = 2$, and $\lim_{ x \to 8 }h(x) = 4$ use the limit properties given in this section to compute each of the following limits. If it is not possible to compute any of the limits clearly explain why not.
	(a) $\lim_{ x \to 8 }[2f(x)-12h(x)]$ 


### Answers
1. (a) = -66