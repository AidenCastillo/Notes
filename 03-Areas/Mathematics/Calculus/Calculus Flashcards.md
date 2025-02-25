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