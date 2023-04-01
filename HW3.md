# CSDS 133 Written Homework 3
**Instructions:** Each question is worth 10 points unless otherwise stated. Write your answers below the question. Only one answer is needed from a group unless otherwise specified. Each answer should be formatted so it renders properly on github. **Answers that do not render properly may not be graded.** Each person in each group must commit and push their own work. You will not get credit for work committed/pushed by someone else even if done by you. Each person is expected to do an approximately equal share of the work, as shown by the git logs. **If we do not see evidence of equal contribution from the logs for someone, their individual grade will be reduced substantially.** Please comment the last commit with "FINAL COMMIT" and **enter the final commit ID in canvas by the due date.**

Note: Questions which ask you to "prove" something often require a general argument rather than specific examples. For other questions, please show your work rather than just the final answer for full credit.

1. Find $f \circ g$ and $g \circ f$ for $f(x)=\sqrt{(x+2)}$ and $g(x)=\frac{1}{x}$.

Answer:
$$g \circ f = g(f(x))=\frac{1}{f(x)}=\frac{1}{\sqrt{x+2}}$$
$$f \circ g = f(g(x)) =\sqrt{g(x) + 2} = \sqrt{\frac{1}{x}+2}$$

2. Using the definition of the derivative, show that $\frac{d}{dx}\frac{1}{x}=\frac{-1}{x^2}$. 

Answer: \
$f(x)=\frac{1}{x}$ \
$\frac{d}{dx}\frac{1}{x}=\frac{df(x)}{dx}=lim_{\Delta x \rightarrow 0}\frac{f(x+ \Delta x)-f(x)}{\Delta x}=lim_{\Delta x \rightarrow 0}\frac{\frac{1}{x+ \Delta x} - \frac{1}{x}}{\Delta x}=lim_{\Delta x \rightarrow 0}\frac{\frac{- \Delta x}{x(x+ \Delta x)}}{\Delta x}=lim_{\Delta x \rightarrow 0}\frac{-1}{x(x+ \Delta x)}=\frac{-1}{x(x+0)}=\frac{-1}{x^2}$

3. Prove the quotient rule using the product rule and the chain rule of derivatives. You can use the result from Q2 above.

Answer: \
$\frac{d}{dx}(\frac{f(x)}{g(x)})=\frac{d}{dx}(f(x){g(x)^{-1}})=f(x)\frac{dg(x)^{-1}}{dx}+\frac{df(x)}{dx}g(x)^{-1}=\frac{-f(x)g'(x)}{g(x)^2}+\frac{f'(x)}{g(x)}=\frac{f'(x)g(x)-f(x)g'(x)}{g(x)^2}$


4. Find the derivative of $f(x)=a^x$ where $a$ is a constant. Show your work. (Hint: Write $f(x)$ as an exponential function and use the chain rule.)

Answer: \
$f(x)=a^x$, so $ln(f(x))=ln(a^x)=xln(a)$ and $f(x)=e^{xln(a)}=(e^x)^{ln(a)}$. \
Let $g(x)=e^x$ and $h(u)=u^{ln(a)}$, then $f(x)=(g(x))^{ln(a)}=h(g(x))$. \
We have $g'(x)=e^x$ and $h'(u)=ln(a)(u)^{ln(a)-1}$. \
$(f(x))'=(h(g(x)))'=h'(g(x))(g'(x))=ln(a)(g(x))^{ln(a)-1}e^x=ln(a)(e^x)^{ln(a)-1}e^x=ln(a)(e^x)^{ln(a)-1+1}=ln(a)(e^x)^{ln(a)}=ln(a)e^{xln(a)}=ln(a)(e^{ln(a)})^x$. \
Let $n=ln(a)$, then $e^n=a$ and $e^{ln(a)}=e^n=a$. \
Then $(f(x))'=ln(a)(e^{ln(a)})^x=ln(a)a^x=a^x ln(a)$.

5.  Find the Jacobian of $f(x,y)=\[x^y, y^x, e^{xy}\]$. Show your work. (Hint: The derivative of $x^n$, $n$ constant, is $nx^{n-1}$.)

Answer: Let $[x^y, y^x, e^{xy}]=[f_1(x,y), f_2(x,y), f_3(x,y)]$, we have:

$$\frac{\partial{f_1}}{\partial x}=\frac{\partial{x^y}}{\partial x}=yx^{y-1}$$
$$\frac{\partial{f_2}}{\partial x}=\frac{\partial{y^x}}{\partial x}=y^xln(y)$$
$$\frac{\partial{f_3}}{\partial x}=\frac{\partial{e^{xy}}}{\partial x}=ye^{xy}$$
$$\frac{\partial{f_2}}{\partial y}=\frac{\partial{y^x}}{\partial y}=x^yln(x)$$
$$\frac{\partial{f_1}}{\partial y}=\frac{\partial{x^y}}{\partial y}=xy^{x-1}$$

$$\frac{\partial{f_3}}{\partial y}=\frac{\partial{e^{xy}}}{\partial y}=xe^{xy}$$

$$\Rightarrow\nabla_{x,y}=\begin{bmatrix} 
   yx^{y-1} & x^yln(x) \\
   y^xln(y) & xy^{x-1} \\
   ye^{xy} & xe^{xy} \\
   \end{bmatrix}$$

6. Let $f(x, y, z)=(x^2+z, x+y^2)$. Let $g(a, b)=(a^3b^2, a^2b^3, a^2−b^3)$. Find the Jacobian of $f \circ g$. Show your work.

Answer: 
```math
f \circ g =
\begin{bmatrix}
f_1(a,b) \\
f_2(a,b)
\end{bmatrix}
=
\begin{bmatrix}
a^{6}b^{4}+a^{2}-b^{3} \\
a^{3}b^{2}+a^{4}b^{6}
\end{bmatrix}
```

```math
\nabla_{a,b}(f \circ g) =
\begin{bmatrix}
\dfrac{\partial f_1}{\partial a} & \dfrac{\partial f_1}{\partial b} \\
\dfrac{\partial f_2}{\partial a} & \dfrac{\partial f_2}{\partial b}
\end{bmatrix}
```

7. Find the Hessian of $f \circ g$ from Q6. Show your work.

Answer: 
```math
\nabla_{a,b}^{2}(f \circ g) = 
\begin{bmatrix}
30a^{4}b^{4} +2 ; \; 6ab^{2}+12a^{2}b^{6}   &  24a^{5}b^{3}; \;6a^{2}b +  24a^{3}b^{5} \\
24a^{5}b^{3}; \; 6a^{2}b+24a^{3}b^{5} &    12a^{6}b^{2}-6b;2a^3+30a^{4}b^{4}
\end{bmatrix}
```


8. Prof. Calculus is climbing Mt. Steepy McSteepface. At each point $(x,y)$ the mountain has height $h(x,y)= 100e^{-(x^2+y^2-6x-8y+25)}$. Help Prof. Calculus by finding the height of the summit. Show your work.

Answer: \
The height of the summit is the maximum value of the function $h(x,y)=100e^{-(x^2+y^2-6x-8y+25)}$. \
Find the maximum value of function $h(x,y)=100e^{-(x^2+y^2-6x-8y+25)}$:
- $\frac{\partial h}{\partial x}=0$ and $\frac{\partial h}{\partial y}=0$ \
$\frac{\partial h}{\partial x}=\frac{\partial (100e^{-(x^2+y^2-6x-8y+25)})}{\partial x}=100e^{-(x^2+y^2-6x-8y+25)}(-2x+6)$ \
$\frac{\partial h}{\partial y}=\frac{\partial (100e^{-(x^2+y^2-6x-8y+25)})}{\partial y}=100e^{-(x^2+y^2-6x-8y+25)}(-2y+8)$ \
$0=\frac{\partial h}{\partial x}=100e^{-(x^2+y^2-6x-8y+25)}(-2x+6)$, so $-2x+6=0$ (because $e^{-(x^2+y^2-6x-8y+25)}$ is not equal to 0). $-2x+6=0$, so $x=3$. \
$0=\frac{\partial h}{\partial y}=100e^{-(x^2+y^2-6x-8y+25)}(-2y+8)$, so $-2y+8=0$ (because $e^{-(x^2+y^2-6x-8y+25)}$ is not equal to 0). $-2y+8=0$, so $y=4$.
- I use Julia to graph the function $h(x,y)=100e^{-(x^2+y^2-6x-8y+25)}$. \
Based on the graph generated by the following code, the function $h(x,y)$ only has 1 maximum value and does not have minimum value.
```julia
using Plots
xs = range(-10, 10, 50)
ys = range(-10, 10, 50)
h(x,y) = 100*exp(-x^2 - y^2 + 6*x + 8*y - 25)
surface(xs, ys, h)
```
Therefore, the maximum value of the function $h(x,y)$ is $h(3,4)$.
The height of the summit is $h(3,4)=100e^{-(3^2+4^2-6\times 3-8 \times 4+25)}=100e^0=100$.

9. When Prof. Calculus reaches the point on the mountain with $(x,y)$ coordinates of $(2, 2)$ in Q8 they feel an urgent need to return to the base camp which is at $(0,0)$. Find the best direction they should start to move in at this point to return quickly to camp. 

Answer: To find the best direction for Prof. Calculus to move in to return quickly to camp, we need to calculate the gradient of the height function $h(x,y)=100e^{-(x^2+y^2-6x-8y+25)}$ at the point (2,2). 

The gradient of h(x,y) is given by the vector: 
$\nabla_{x,y}=[\frac{\partial h}{\partial x}, \frac{\partial h}{\partial y}]$


Taking the partial derivatives, we get: 
- $\frac{\partial h}{\partial x} = -100(2x-6) e^{-(x^2+y^2-6x-8y+25)}$

- $\frac{\partial h}{\partial y} = -100(2y-8) e^{-(x^2+y^2-6x-8y+25)}$

Evaluating these partial derivatives at the point (2,2), we get:
- $h_x(2,2) = -100(2*2-6) e^{-(2^2+2^2-12-16+25)} = 200e^5$

- $h_y(2,2) = -100(2*2-8) e^{-(2^2+2^2-12-16+25)} = 400e^5$

So the gradient at (2,2) is given by:

$\nabla_{x,y} = [200e^5, 400e^5]$

To return quickly to camp, Prof. Calculus should move such that function h will decrease fastest. The opposite direction of the gradient is the direction of steepest descent, and moving in this direction will take Prof. Calculus down the mountain to the base camp at (0,0) as quickly as possible. So the best direction for them to move in is:
$$[-200e^5, -400e^5]$$

10.   Show that the set $C=\\{x : Ax \geq b\\}$ , with $A$ a matrix of size $(m,n)$, $x$ a vector of size $n$, $b$ a vector of size $m$, is a convex set. 

Answer: By definition a set C is convex if for any $x_1, x_2$ in C, $\lambda x_1 +(1−\lambda)x_2$ is also in C given that $0\leq\lambda\leq 1$. Examine $A\times(\lambda x_1 +(1−\lambda)x_2)$ :
$$A\times(\lambda x_1 +(1−\lambda)x_2) = A\times\lambda x_1 + A\times (1-\lambda) x_2$$
$$=\lambda A\times x_1 + (1-\lambda)A \times x_2 \geq \lambda b + (1-\lambda)b = b$$
$$\Rightarrow A\times(\lambda x_1 +(1−\lambda)x_2) \geq b$$

We directly proved that the condition for the set C to be convex is correct


11. Suppose $S=\\{x : \Vert x\Vert \leq 1\\}$ where $x$ are vectors of size $n$. Show that $S$ is a convex set.

Answer: 
To show that $S$ is a convex set, we need to show that for any two points $x, y \in S$ and any scalar $\lambda \in [0,1]$, the point $(1-\lambda)x + \lambda y$ is also in $S$.

Let $x$ and $y$ be two arbitrary vectors in $S$, which means that $|x| \leq 1$ and $|y| \leq 1$.

Consider any scalar $\lambda \in [0,1]$. Then, we have:

$$
\begin{aligned}
|(1-\lambda)x + \lambda y| &= |x + \lambda(y-x)| \\
&\leq |x| + \lambda|y-x| \quad \text{(by triangle inequality)} \\
&\leq 1 + \lambda|y-x| \quad \text{(since }|x|\leq 1\text{)} \\
&\leq 1 + \lambda(|y|+|x|) \quad \text{(by triangle inequality)}\\
&\leq 1 + \lambda + \lambda|y| \quad \text{(since }|x|\leq 1\text{ and }|y|\leq 1\text{)}\\
&\leq 1 + \lambda \leq 1
\end{aligned}
$$

Therefore, $(1-\lambda)x + \lambda y$ satisfies $|(1-\lambda)x + \lambda y| \leq 1$, which means that it belongs to $S$.

Hence, we have shown that for any two points $x, y \in S$ and any scalar $\lambda \in [0,1]$, the point $(1-\lambda)x + \lambda y$ is also in $S$, which implies that $S$ is a convex set.

12. Suppose $f$ and $g$ are two arbitrary convex functions. Prove or give a counterexample: (i) $f+g$ is convex (ii) $f-g$ is convex.

Answer: \
(i) \
$f$ and $g$ are convex functions. \
Therefore, for every $x_1, x_2$ in $\mathbb{R}$ and every $\lambda$ in $[0,1]$, $f(\lambda x_1+(1-\lambda)x_2) \leq \lambda f(x_1)+(1-\lambda)f(x_2)$ and $g(\lambda x_1+(1-\lambda)x_2) \leq \lambda g(x_1)+(1-\lambda)g(x_2)$. \
As a result, $(f+g)(\lambda x_1+(1-\lambda)x_2) = f(\lambda x_1+(1-\lambda)x_2) + g(\lambda x_1+(1-\lambda)x_2) \leq \lambda f(x_1)+(1-\lambda)f(x_2)+\lambda g(x_1)+(1-\lambda)g(x_2) = \lambda (f(x_1)+g(x_1)+(1-\lambda)(f(x_2)+g(x_2))=\lambda (f+g)(x_1)+(1-\lambda)(f+g)(x_2)$. \
In short, for every $x_1, x_2$ in $\mathbb{R}$ and every $\lambda$ in $[0,1]$, $(f+g)(\lambda x_1+(1-\lambda)x_2) \leq \lambda (f+g)(x_1)+(1-\lambda)(f+g)(x_2)$. This shows that $f+g$ is convex. \
(ii) \
Provide counterexample: \
Let $f$ be $f(x) = x^2$ and let $g$ be $g(x) = x^4$. \
$\frac{d^2f}{dx^2}=\frac{d^2(x^2)}{dx^2}=\frac{d(\frac{d(x^2)}{dx})}{dx}=\frac{d(2x)}{dx}=2 > 0$ and $\frac{d^2g}{dx^2}=\frac{d^2(x^4)}{dx^2}=\frac{d(\frac{d(x^4)}{dx})}{dx}=\frac{d(4x^3)}{dx}=12x^2 \geq 0$ (because $x^2 \geq 0$). \
Therefore, $f$ and $g$ are convex functions in this case. \
$f-g=f(x)-g(x)=x^2-x^4$. \
$\frac{d^2(f-g)}{dx^2}=\frac{d^2(x^2-x^4)}{dx^2}=\frac{d(\frac{d(x^2-x^4)}{dx})}{dx}=\frac{d(2x-4x^3)}{dx}=2-12x^2$, which is less than 0 if $x^2 > \frac{1}{6}$, so in this case, $f-g$ is not convex.
