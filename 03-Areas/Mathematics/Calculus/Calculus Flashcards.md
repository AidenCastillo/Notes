---
dg-publish: true
---

#flashcards/Calculus/Derivatives
### **Derivatives**  

**Definition of a Derivative**  
?  
$$
f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}
$$  

**Alternative Definition of Derivative**  
?  
$$
f'(a) = \lim_{x \to a} \frac{f(x) - f(a)}{x - a}
$$  

**Derivative Rules**  

**Power Rule**
?
$$
\frac{d}{dx} x^n = n x^{n-1}
$$

**Sum and Difference Rule**  
?  
$$
\frac{d}{dx} [f(x) \pm g(x)] = f'(x) \pm g'(x)
$$  

**Product Rule**  
?  
$$
\frac{d}{dx} [uv] = u' v + u v'
$$  

**Quotient Rule**  
?  
$$
\frac{d}{dx} \left(\frac{u}{v}\right) = \frac{u' v - u v'}{v^2}
$$  

**Chain Rule**  
?  
$$
\frac{d}{dx} f(g(x)) = f'(g(x)) g'(x)
$$  

**Implicit Differentiation**  
?  
Differentiate both sides of an equation with respect to $$ x $$, treating $$ y $$ as a function of $$ x $$ and applying the chain rule.  

**Intervals of Increase and Decrease**
?
- Take derivative of function
- set it equal to zero to find your critical numbers
- Plug in number above the critical number and below the critical number to find the sign of derivative, right before and after.


**Concavity**
?
- If second derivative is positive the function is concave up
- If second derivative is negative the function is concave down

**Logarithmic Differentiation**  
?  
Take the natural logarithm of both sides and then differentiate:  
$$
y = f(x) \Rightarrow \ln y = \ln f(x)
$$  

**Derivatives of Trigonometric Functions**  

**$$ \frac{d}{dx} \sin x $$**  
?  
$$\cos x$$  

**$$ \frac{d}{dx} \cos x $$**  
?  
$$-\sin x$$  

**$$ \frac{d}{dx} \tan x $$**  
?  
$$ \sec^2 x $$  

**$$ \frac{d}{dx} \cot x $$**  
?  
$$-\csc^2 x$$  

**$$ \frac{d}{dx} \sec x $$**  
?  
$$ \sec x \tan x $$  

**$$ \frac{d}{dx} \csc x $$**  
?  
$$-\csc x \cot x$$  

**Derivatives of Exponential and Logarithmic Functions**  

**$$ \frac{d}{dx} e^x $$**  
?  
$$ e^x $$  

**$$ \frac{d}{dx} a^x $$**  
?  
$$ a^x \ln a $$  

**$$ \frac{d}{dx} \ln x $$**  
?  
$$ \frac{1}{x} $$  

**$$ \frac{d}{dx} \log_a x $$**  
?  
$$ \frac{1}{x \ln a} $$  

---
#flashcards/Calculus/Geometry
# Geometry

**Volume of a Cone**
?
$$V=\frac{1}{3}\pi r^2 h$$

**Surface Area of Cone**
?
$$S=\pi r \sqrt{r^2+h^2} + \pi r^2$$

**Volume of a Sphere**
?
$$V=\frac{4}{3}\pi r^3$$

**Volume of a Cylinder**
?
$$V=\pi r^2 h$$

**Volume of a Torus**
?
$$V=2\pi^2 r^2 R$$
With R being radius to middle of donut to middle of ring, and r, being from middle of ring to edge

**Volume of a Cube**
?
$$V=lwh$$

**Volume of a Pyramid**
?
$$V=\frac{1}{3}s^2 h$$

**Volume of a Triangluar Prism**
?
$$V=\frac{1}{2}b h$$

**Area of a Circle**
?
$$A=\pi r^2$$




---

#flashcards/Calculus/Integrals
### **Integrals**  

**Basic Integral Rules**  

**Power Rule for Integrals**  
?  
$$
\int x^n dx = \frac{x^{n+1}}{n+1} + C, \quad n \neq -1
$$  

**Sum and Difference Rule**  
?  
$$
\int [f(x) \pm g(x)] dx = \int f(x)dx \pm \int g(x)dx
$$  

**Common Integrals**  

**$$ \int e^x dx $$**  
?  
$$ e^x + C $$  

**$$ \int a^x dx $$**  
?  
$$ \frac{a^x}{\ln a} + C $$  

**$$ \int \frac{1}{x} dx $$**  
?  
$$ \ln |x| + C $$  

**Trigonometric Integrals**  

**$$ \int \sin x dx $$**  
?  
$$-\cos x + C$$  

**$$ \int \cos x dx $$**  
?  
$$\sin x + C$$  

**$$ \int \sec^2 x dx $$**  
?  
$$\tan x + C$$  

**$$ \int \csc^2 x dx $$**  
?  
$$-\cot x + C$$  

**$$ \int \sec x \tan x dx $$**  
?  
$$\sec x + C$$  

**$$ \int \csc x \cot x dx $$**  
?  
$$-\csc x + C$$  
**Disk Method Integration**
?
- $V=\pi \int_{a}^{b}{[R(x)]^2dx}$
- We get a 2d shape from the area under the curve and if we rotate this shape, we get a 3d object
- to find area we integrate the volume formula, or add up tiny individual pieces of area slices or disks. Pear slices
- Can combine between two curves called washer method and subtract the two 


---
#flashcards/Calculus/Theorems
### **Theorems**  

**Mean Value Theorem (MVT)**  
?  
If $$ f(x) $$ is continuous on $$ [a, b] $$ and differentiable on $$ (a, b) $$, then there exists $$ c $$ in $$ (a, b) $$ such that:  
$$
f'(c) = \frac{f(b) - f(a)}{b - a}
$$  

**Rolle’s Theorem**  
?  
A special case of MVT where $$ f(a) = f(b) $$, implying $$ f'(c) = 0 $$ for some $$ c $$.  

**L'Hôpital’s Rule**  
?  
If $$ \lim_{x \to c} \frac{f(x)}{g(x)} $$ produces an indeterminate form $$ \frac{0}{0} $$ or $$ \frac{\infty}{\infty} $$, then:  
$$
\lim_{x \to c} \frac{f(x)}{g(x)} = \lim_{x \to c} \frac{f'(x)}{g'(x)}
$$  

---
#flashcards/Calculus/Series
### **Series and Sequences**  
**nth Term Test**
?
- If $\lim_{n}{a_n}!=0$ or does not exist -> diverge
- if = 0 inconclusive (need another test)

**Geometric Series**
?
- Form a + ar + ar^2
- converges if abs(r) < 1, diveres if >= 1
- Sum if convergent: S = a_1 / (1 -r 1)

**Taylor Series Expansion**  
?  
$$
f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!} (x-a)^n
$$  

**Maclaurin Series for $$ e^x $$**  
?  
$$
e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!}
$$  

**Maclaurin Series for $$ \sin x $$**  
?  
$$
\sin x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!}
$$  

**Maclaurin Series for $$ \cos x $$**  
?  
$$
\cos x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!}
$$  

**Radius of Convergence (Ratio Test)**  
?  
$$
\lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| < 1
$$

**P-Series**
?
- Form $\sum{\frac{1}{n^p}}$
- Converges if P > 1, Divges if p $<=$ 1

**Integral Test**
?
- If f(x) positive, continuous, and decreasing
- $\sum{a_n}$ and $\int{f(x)dx}$ both converge or diverge
- Find the integral of f(x) and see if it converges to a real number

**Comparison Test**
?
- Compare with known series (like $1/n^p$)
- If $0 <= a_n <= b_n$
- Then $\sum{b_n}$ converges so does $\sum{a_n}$
- $\sum{a_n}$ diverges so does $\sum{b_n}$

**Limit Comparison Test**
?
- If $a_n > 0, b_n > 0$ and $\lim_{n \to \infty} \frac{a_n}{b_n}=L$ (0 < L < $\infty$), then both series diverge or converge

**Alternating Series Test (Leibniz Test)**
?
- Form $(-1)^n b_n$ or $(-1)^{n+1} b_n$, where $b_n>0$
- Converges if $b_n$ decreasing and $\lim_{n \to \infty} b_n=0$

**Absolute vs Conditional Convergence**
?
- Absolute convergence - $\sum{|a_n|}$ diverges
- Conditional - $\sum{a_n}$ converges but $\sum{|a_n|}$ diverges

**Ratio Test**
?
- $\lim_{n \to \infty} |\frac{a_(n+1)}{a_n}|=L$
- If L < 1, converges absolutely, L > 1 or $\infty$ diverges. L=1, inconclusive

**Root Test**
?
- $\lim_{n \to \infty} \sqrt[n]{|a_n|}=L$, L<1 converges absolutely, L > 1 diverges, L=1 inconclusive

**Power Series**
- $\sum_{n=0}^{\infty}{C_n(x-a)^n}$
- Series converges when |x-a| < interval of converges
- Interval of convergence - vals near x where series converges
- Test converges at end points seperately

**Alternating Series Error bound**
- When summing an alternating series with finite number of tersm, the sum will not be the same as the sum with an infinite number
- To find the error, we evaluate $|S-S_n|$
- Can place a bound on the error: a number that the error is less than, which is the absolute value of the next term in alternating series
- If summing 10 terms, the error will be less than the absolute value of the eleventh term

---
#flashcards/Calculus/Parametric
### **Parametric, Polar, and Vector Calculus**  

**Derivative of Parametric Equations**  
?  
If $$ x = f(t) $$ and $$ y = g(t) $$, then:  
$$
\frac{dy}{dx} = \frac{\frac{dy}{dt}}{\frac{dx}{dt}}
$$  

**Arc Length of a Parametric Curve**  
?  
$$
L = \int_a^b \sqrt{\left( \frac{dx}{dt} \right)^2 + \left( \frac{dy}{dt} \right)^2} dt
$$  

**Polar Area Formula**  
?  
$$
A = \frac{1}{2} \int_{\theta_1}^{\theta_2} r^2 d\theta
$$  