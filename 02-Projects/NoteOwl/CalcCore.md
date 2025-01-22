```java
Function f = new Function("f", "x^2", "x");
Expression e = new Expression("f(2)", f);
e.evaluate();
f.evaluate();
```

```java
Function f = new Function("f(x) = x^2");
Expression e = new Expression("f(2)", f);
```
```java
Function f = new Function("f(a, b, c) = a+b+c");
Expression e = new Expression("f(1,2,3)", f);
```
```java
Function f = new Function("f(x) = 2*x");
Function g = new Function("g(x) = f(x)^2", f);
```