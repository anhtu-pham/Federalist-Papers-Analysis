# CSDS 133 Written Homework 3
**Instructions:** Each question is worth 10 points unless otherwise stated. Write your answers below the question. Only one answer is needed from a group unless otherwise specified. Each answer should be formatted so it renders properly on github. **Answers that do not render properly may not be graded.** Each person in each group must commit and push their own work. You will not get credit for work committed/pushed by someone else even if done by you. Each person is expected to do an approximately equal share of the work, as shown by the git logs. **If we do not see evidence of equal contribution from the logs for someone, their individual grade will be reduced substantially.** Please comment the last commit with "FINAL COMMIT" and **enter the final commit ID in canvas by the due date.**

Note: Questions which ask you to "prove" something often require a general argument rather than specific examples. For other questions, please show your work rather than just the final answer for full credit.

1. Find $f \circ g$ and $g \circ f$ for $f(x)=\sqrt{(x+2)}$ and $g(x)=\frac{1}{x}$.

Answer:

2. Using the definition of the derivative, show that $\frac{d}{dx}\frac{1}{x}=\frac{-1}{x^2}$. 

Answer: \
$f(x)=\frac{1}{x}$ \
$\frac{d}{dx}\frac{1}{x}=\frac{df(x)}{dx}=lim_{\Delta x \rightarrow 0}\frac{f(x+ \Delta x)-f(x)}{\Delta x}=lim_{\Delta x \rightarrow 0}\frac{\frac{1}{x+ \Delta x} - \frac{1}{x}}{\Delta x}=lim_{\Delta x \rightarrow 0}\frac{\frac{- \Delta x}{x(x+ \Delta x)}}{\Delta x}=lim_{\Delta x \rightarrow 0}\frac{-1}{x(x+ \Delta x)}=\frac{-1}{x(x+0)}=\frac{-1}{x^2}$

3. Prove the quotient rule using the product rule and the chain rule of derivatives. You can use the result from Q2 above.

Answer: 

4. Find the derivative of $f(x)=a^x$ where $a$ is a constant. Show your work. (Hint: Write $f(x)$ as an exponential function and use the chain rule.)

Answer: \
$f(x)=a^x$, so $ln(f(x))=ln(a^x)=xln(a)$ and $f(x)=e^{xln(a)}=(e^x)^{ln(a)}$. \
Let $g(x)=e^x$ and $h(u)=u^{ln(a)}$, then $f(x)=(g(x))^{ln(a)}=h(g(x))$. \
We have $g'(x)=e^x$ and $h'(u)=ln(a)(u)^{ln(a)-1}$. \
$(f(x))'=(h(g(x)))'=h'(g(x))(g'(x))=ln(a)(g(x))^{ln(a)-1}e^x=ln(a)(e^x)^{ln(a)-1}e^x=ln(a)(e^x)^{ln(a)-1+1}=ln(a)(e^x)^{ln(a)}=ln(a)e^{xln(a)}=ln(a)(e^{ln(a)})^x$. \
Let $n=ln(a)$, then $e^n=a$ and $e^{ln(a)}=e^n=a$. \
Then $(f(x))'=ln(a)(e^{ln(a)})^x=ln(a)a^x=a^x ln(a)$.

5.  Find the Jacobian of $f(x,y)=\[x^y, y^x, e^{xy}\]$. Show your work. (Hint: The derivative of $x^n$, $n$ constant, is $nx^{n-1}$.)

Answer: 

6. Let $f(x, y, z)=(x^2+z, x+y^2)$. Let $g(a, b)=(a^3b^2, a^2b^3, a^2−b^3)$. Find the Jacobian of $f \circ g$. Show your work.

Answer: 

7. Find the Hessian of $f \circ g$ from Q6. Show your work.

Answer: 

8. Prof. Calculus is climbing Mt. Steepy McSteepface. At each point $(x,y)$ the mountain has height $h(x,y)= 100e^{-(x^2+y^2-6x-8y+25)}$. Help Prof. Calculus by finding the height of the summit. Show your work.

Answer: \
The height of the summit is the maximum value of the function $h(x,y)=100e^{-(x^2+y^2-6x-8y+25)}$. \
Find the maximum value of function $h(x,y)=100e^{-(x^2+y^2-6x-8y+25)}$:
- $\frac{\partial h}{\partial x}=0$ and $\frac{\partial h}{\partial y}=0$ \
$\frac{\partial h}{\partial x}=\frac{\partial (100e^{-(x^2+y^2-6x-8y+25)})}{\partial x}=100e^{-(x^2+y^2-6x-8y+25)}(-2x+6)$ \
$\frac{\partial h}{\partial y}=\frac{\partial (100e^{-(x^2+y^2-6x-8y+25)})}{\partial y}=100e^{-(x^2+y^2-6x-8y+25)}(-2y+8)$ \
$0=\frac{\partial h}{\partial x}=100e^{-(x^2+y^2-6x-8y+25)}(-2x+6)$, so $-2x+6=0$ (because $e^{-(x^2+y^2-6x-8y+25)}$ is not equal to 0). $-2x+6=0$, so $x=3$. \
$0=\frac{\partial h}{\partial y}=100e^{-(x^2+y^2-6x-8y+25)}(-2y+8)$, so $-2y+8=0$ (because $e^{-(x^2+y^2-6x-8y+25)}$ is not equal to 0). $-2y+8=0$, so $y=4$.

The height of the summit is $f(3,4)=100e^{-(3^2+4^2-6\times 3-8 \times 4+25)}=100e^0=100$.

9. When Prof. Calculus reaches the point on the mountain with $(x,y)$ coordinates of $(2, 2)$ in Q8 they feel an urgent need to return to the base camp which is at $(0,0)$. Find the best direction they should start to move in at this point to return quickly to camp. 

Answer:

10. Show that the set $C=\\{x : Ax \geq b\\}$ , with $A$ a matrix of size $(m,n)$, $x$ a vector of size $n$, $b$ a vector of size $m$, is a convex set. 

Answer:

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

Answer: 
