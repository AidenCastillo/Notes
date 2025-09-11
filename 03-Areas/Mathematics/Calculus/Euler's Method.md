---
dg-publish: true
---

Numerical technique for solving differential equations by using linear approxmiations to estimate the value of a function at specfic points.

1. Start with initial point and diff equation that gives the slope
2. Write the equation of the tangent line
3. Use tangent line to approxmiate the point on the solution a short distance away from the inital point
4. repeat process until youve reached desired time or number of steps.

$$y_{n+1}=y_{n}+f(t_{n},y_{n})*(t_{n+1}-t_{n})$$

## Example
Let y= f(x) be the soltuion to the differential equation dy/dx = x+2y with initical conditions f(0)=2. what is the approximation for f(-0.4) obtained by using euler's method with two steps of equal length starting at x =0

this can be written as $y_{k+1}=y_{k}+f(x_{k},y_{k})(\Delta x)$ with $\Delta x$ is the step size. Since we are having two steps, our chagne of x will be -0.2
$x_{0}=0;y_{0}=2$
$y_{1}$