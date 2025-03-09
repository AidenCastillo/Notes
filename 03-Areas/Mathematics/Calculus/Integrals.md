Also known as the anti derivative, we can use the Integral to find area under a curve or the continuous analog of a sum. We can use it to find values suc as displacement from velocity, and any other programs in math or physics
### Quick Reference

## Definite Integral

## Indefinite Integral

## Substitution Rule

## Integrate by Parts


## Derivative of Integral
The derivtive of a integral is the function its self (by definition, a integral is the antiderivative), but only when it is a indefinite integral.
General Formula:
$$\int_{g(t)}^{h(t)}{f(x)}dx = h'(t) * f(h(t)) - g'(t) * f(g(t))$$
The derivative of a definite integral is teh function only if the lower limit is a constant the top is a variable in respect to what we are differentiating.
$$\frac{d}{dx} \int {f(x)} = f(x)$$
$$\frac{d}{dx} \int_{a}^{b}{f(x))}dt = 0$$$$\frac{d}{dx} \int_{a}^{x}{f(x)}dt = f(x)$$
When both upper and lower limits contain a function or variables such as $\int_{t^2}^{t^3}{log(x^3+1)dx}$ we can apply the property of definite integrals.
$$\frac{d}{dx}\int_{a}^{c}{f(t)}dt = \frac{d}{dx}\int_{a}^{b}{f(t)}dt + \frac{d}{dx}\int_{b}^{c}{f(t)}dt$$
Then rewrite the equation from before as 
$$\frac{d}{dx}\int_{t^2}^{t^3}{log(x^3+1)}dx = \frac{d}{dx}\int_{t^2}^{1}{log(x^3+1)}dx + \frac{d}{dx}\int_{1}^{t^3}{log(x^3+1)}dx = -\frac{d}{dx}\int_{1}^{t^2}{log(x^3+1)}dx + \frac{d}{dx}\int_{1}^{t^3}{log(x^3+1)}dx$$
if $u = t^2$ and $v=t^3$ and we apply the chain rule 
$$-[\frac{d}{du}\int_{1}^{u}{log(x^3+1)}dx][\frac{du}{dt}] + [\frac{d}{dv}\int_{1}^{v}{log(x^3+1)}dx][\frac{dv}{dt}]$$

$$[-log(u^3+1)][2t]+[log(v^3+1)][3t^2]$$
$$-2tlog(t^6+1) + 3t^2log(t^9+1)$$