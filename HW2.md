# CSDS 133 Written Homework 2
**Instructions:** Each question is worth 10 points unless otherwise stated. Write your answers below the question. Only one answer is needed from a group unless otherwise specified. Each answer should be formatted so it renders properly on github. **Answers that do not render properly may not be graded.** Each person in each group must commit and push their own work. You will not get credit for work committed/pushed by someone else even if done by you. Each person is expected to do an approximately equal share of the work, as shown by the git logs. **If we do not see evidence of equal contribution from the logs for someone, their individual grade will be reduced substantially.** Please comment the last commit with "FINAL COMMIT" and **enter the final commit ID in canvas by the due date.**

Note: Questions which ask you to "prove" something often require a general argument rather than specific examples. For other questions, please show your work rather than just the final answer for full credit.

1. Find the angle between the vectors (1, 2) and (-1, -1). Show your work.

Answer:\
Let $x=(1,2)$, $y=(-1,-1)$.\
Let $\theta$ be the angle between the given vectors.\
Then $cos \ \theta= {x.y\over ||x||_2||y||_2}={(1,2).(-1,-1)\over||(1,2)||_2||(-1,-1)||_2}={1\times(-1)+2\times(-1)\over \sqrt{1^2+2^2}\times\sqrt{(-1)^2+(-1)^2}}={-3\over\sqrt{10}}$\
Therefore, $\theta=cos^{-1}({-3\over\sqrt{10}}) \approx 161.565 \ degrees$

2. Find a vector orthogonal to (4, 1, -2). Show your work. 

Answer: 

Let $x = (x_1, x_2, x_3)$ be the vector orthogonal to (4, 1, -2) then the dot product between them must be equal to zero. Therefore, $x_1*4 + x_2*1 + x_3*-2=0$. Since this single equation has three unknowns, we can set $x_1$ and $x_2$ as free values. For $x_1=1, x_2 =-4$, the equation becomes: 
$$4 + (-4) + -2x_3 = 0$$ 
$$\Leftrightarrow -2x_3 = 0$$ 
$$\Leftrightarrow x_3 =0$$
 We have $x=(1, -4, 0)$ as an orthogonal vector to $(4, 1, -2)$


3. Suppose U is the set of vectors {(1, 1, 1), (1, 2, 3), (2, 2, 2), (3, 4, 5), (0, 1, 0), (1, 0, 1)}. What is the dimensionality of U? Show your work.

Answer: 3.

First I convert set U into a matrix. Then I use Julia to find the rank of this matrix, which is 3.

```julia
A = [1 1 1; 1 2 3; 2 2 2; 3 4 5; 0 1 0; 1 0 1]
println(rank(A)) #  = 3
```

We can confirm this with the definition of dimension of a matrix = number of vectors in the basis of A. 

We can start by finding the independent one.

1 1 1 is the combination of 0 1 0 and 1 0 1.
Similar with 2 2 2.
3 4 5 is the combination of 1 2 3 and 2(0 1 0) + 2 (1 0 1).

Then the basis is [0 1 0; 1 0 1; 1 2 3] = 3.

To check this:

a(0, 1, 0) + b(1, 2, 3) + c(1, 0, 1) = (0, 0, 0)

Expanding this equation component-wise, we get the system of linear equations:

b + c = 0 (for the first component)
2b = 0 (for the second component)
3b + c = 0 (for the third component)

Then using substitution, this system will be 0 iff a = b = c = 0 iff the vectors in the basis are linearly independent.

4. Add vectors to U in Q3 to create a new set V so that (i) dim(V)=dim(U) and (ii) V has an orthonormal basis B. Write out the basis B and show it is orthonormal.

Answer: 

Using the Gram-Schmidt Method, we can attain these new goals by creating a set of orthogonal vectors that span the same subspace as our original basis.

First, we need to normalize our old basis.  Our old basis is:

$$\left\lbrace \begin{pmatrix} 0,1,0 \end{pmatrix}, \begin{pmatrix} 1,  2,  3 \end{pmatrix}, \begin{pmatrix} 1, 0, 1 \end{pmatrix} \right\rbrace$$

and called these vectors in this basis $u_1, u_2,$ and $u_3$ respectively.

We'll begin by transforming these into $v_1, v_2, v_3$, which are orthogonal vectors using Gram-Schmidt process.

For $u_1$, it is the base vector, so we will have
$$v_1 = u_1 = (0, 1 ,0)$$

Using this $v_1$, we will begin finding our $v_2$:

$$v_2=u_2-\frac{⟨u_2,v_1⟩}{∥v_1∥^{2}}\cdot v_1 $$

$$v_2=\begin{pmatrix} 1,  2,  3 \end{pmatrix}-\frac{(1, 2, 3)\cdot (0, 1, 0)}{∥(0, 1, 0)∥^{2}}\cdot (0, 1 ,0) $$

$$ \rightarrow v_2 = (1, 0, 3)$$

Using Gram-Schmidt Method, we can similarly find $v_3$:
$$v_3=u_3-\frac{⟨u_3,v_1⟩}{∥v_1∥^{2}}\cdot v_1 -\frac{⟨u_3,v_2⟩}{∥v_2∥^{2}}\cdot v_2 $$

$$v_3=(1, 0, 1)-\frac{(1, 0, 1)\cdot (0, 1, 0)}{∥(0, 1, 0)∥^{2}}\cdot (0, 1 ,0) -\frac{(1, 0, 1)\cdot (1, 0, 3)}{∥(0, 1, 0)∥^{2}}\cdot (1, 0, 3)$$

$$ \rightarrow v_3 = (\frac{3}{5},0,-\frac{1}{5})$$

Now we can normalize the 3 vectors by dividing the coordinates with their magnitudes to form the basis.
$$ B = \left \lbrace {(0,1, 0), (\frac{1}{\sqrt{10}},0, \frac{3}{\sqrt{10}}), (\frac{3}{\sqrt{10}},0, \frac{-1}{\sqrt{10}})} \right \rbrace$$

Checking whether the result is correct:

Using Julia to find the norm and the dot product of each pair:

```julia
v1 = [0 1 0]
v2 = [1/sqrt(10) 0 3/sqrt(10)]
v3 = [3/sqrt(10) 0 -1/sqrt(10)]

println("Magnitude of v1 is $(norm(v1))")
println("Magnitude of v2 is $(norm(v2))")
println("Magnitude of v3 is $(norm(v3))")
println("Dot product of v1, v2 $(dot(v1, v2))")
println("Dot product of v2, v3 $(dot(v2, v3))")
println("Dot product of v3, v1 $(dot(v1, v3))")
```
```
Output:
Magnitude of v1 is 1.0
Magnitude of v2 is 0.9999999999999999 
Magnitude of v3 is 0.9999999999999999
Dot product of v1, v2 0.0
Dot product of v2, v3 0.0
Dot product of v3, v1 0.0
```

The 2 results of v2, v3 magnitude can be checked mathematically that they are = 1, due to the rounding of square root function of Julia, the result are only close to 1.


5\.  For each vector in V in Q4 that is not in B, find its coordinates with respect to B. Show your work.


Answer: 

  1. For vector (1, 1, 1)
  c1 * v1 + c2 * v2 + c3 * v3 = [1 1 1]

  In other words, we need to solve the system of equations:
```math
  c1 * 0 + c2 * (1/sqrt(10)) + c3 * (3/sqrt(10)) = 1
  c1 * 1 + c2 * 0 + c3 * 0 = 1
  c1 * 0 + c2 * (3/sqrt(10)) + c3 * (-1/sqrt(10)) = 1
```
  The second equation simplifies to c1 = 1. Substituting this into the other equations and solving for c2 and c3, we get:

  c2 = (sqrt(10) - 3)/2
  c3 = (3 + sqrt(10))/2


6\. Prove that for any set of vectors U with a finite basis B, each vector in U has unique coordinates with respect to B.

Answer:\
Let $b_1,b_2,...,b_n$ be vectors in the finite basis B (n is number of vectors in B).\
Let u be any vector in U.\
Let $p_1,p_2,...,p_n$ be the coordinates of u with respect to B, then $u=p_1b_1+p_2b_2+...+p_nb_n$.\
Suppose that $q_1,q_2,...,q_n$ are also the coordinates of u with respect to B, then $u=q_1b_1+q_2b_2+...+q_nb_n$.\
Therefore,
```math
p_1b_1+p_2b_2+...+p_nb_n=q_1b_1+q_2b_2+...+q_nb_n
```
```math
(p_1b_1-q_1b_1)+(p_2b_2-q_2b_2)+...+(p_nb_n-q_nb_n)=0
```
```math
(p_1-q_1)b_1+(p_2-q_2)b_2+...+(p_n-q_n)b_n=0
```
Moreover, $b_1,b_2,...,b_n$ are linearly independent because they are vectors in the basis B.\
As a result, $p_1-q_1=p_2-q_2=...=p_n-q_n=0$.\
This means that $p_1=q_1, p_2=q_2,...,p_n=q_n$.\
Therefore, the coordinates of each vector in U with respect to B are unique.

7. Compute the outer product between the vectors: (i) (-1, 1) and (2, 3) (ii) (1, 3, 5, 7) and (0, 1, 1, 0). Show your work.

Answer:  
The following is the solution in julia code:
```julia
  a_1 = [-1, 1]
  b_1 = [2, 3]
  a_2 = [1, 3, 5, 7]
  b_2 = [0, 1, 1, 0]

  #(i)
  println(b_1*a_1')
  #(ii)
  println(b_2*a_2')
```
The result of part (i) is

```math
\begin{bmatrix}
-2 & 2\\
-3 & 3
\end{bmatrix}
```
The result of part (ii) is
```math
\begin{bmatrix}
0 & 0 & 0 & 0\\
1 & 3 & 5 & 7\\
1 & 3 & 5 & 7\\
0 & 0 & 0 & 0
\end{bmatrix}
```

8. Compute the unit vector in the same direction as (i) (1, 3) and (ii) (0.1, 0.2, 0.4, 0.2). Show your work.

Answer:\
(i) Unit vector in the same direction as (1, 3) is equal to ${(1,3)\over||(1,3)||_2}={(1,3)\over\sqrt{1^2+3^2}}={(1,3)\over\sqrt{10}}=({1\over \sqrt{10}}, {3\over \sqrt{10}})$\
(ii) Unit vector in the same direction as (0.1, 0.2, 0.4, 0.2) is equal to ${(0.1, 0.2, 0.4, 0.2)\over||(0.1, 0.2, 0.4, 0.2)||_2}={(0.1, 0.2, 0.4, 0.2)\over\sqrt{0.1^2+0.2^2+0.4^2+0.2^2}}={(0.1, 0.2, 0.4, 0.2)\over 0.5}=({0.1\over 0.5}, {0.2\over 0.5}, {0.4 \over 0.5}, {0.2 \over 0.5})=(0.2, 0.4, 0.8, 0.4)$

9. Suppose B is a matrix containing n orthonormal basis vectors as the columns. What is $B^{T}B$ and why?

Answer:

Conclusion: $B^{T}B$ is an identity matrix of dimension $n$ by $n$, which is a reflection of the fact that the columns of B are orthonormal. 

We have 
$$B^{T}B_{ij}=row_iB^{T}\cdot col_jB=col_iB\cdot col_jB$$

 Since the columns of matrix B are orthonormal vector, it is given that: 
 $$col_iB\cdot col_jB=0$$ 

 for any i different to j as the vectors are orthogonal while $col_iB\cdot col_iB=|col_iB|=1$

Therefore, we have $B^{T}B$ is a matrix that has 1 in diagonal line and 0 in other entries. In other word, $B^{T}B = I_{n\times n}$; it is an identity matrix with dimension of $n$ by $n$

10. Suppose A=[2, 4, 3; 0, 1, 3] and B=[-2, -1, 3; 6, -7, 7]. Find the ranks of A, B and A+B. Show your work.

Answer:

 The following is the solution in julia code: 
```julia 
    A=[2 4 3; 0 1 3]
    B=[-2 -1 3; 6 -7 7]
    #(i)
    println(rank(A))
    #(ii)
    println(rank(B))
    #(iii)
    println(rank(A+B))
```
  The the matrix A+B is:
```math
\begin{bmatrix}
0 & 3 & 6\\
6 & -6 & 10
\end{bmatrix}
```

We see that the ranks of A, B, and A+B are all equal to 2 from the code output in HW2.ipynb. This is because the rank of a matrix is the number of independent columns or rows that it has. Since none of the rows from A, B, A+B can be divided to each othr to find a scalar value hence the matrices all have independent rows. Here our matrices are 2 by 3 so our rank can be 2 at most, therefore the answers are all equal to 2.

11. Suppose b1=(0, -1, 2, 0, 2), b2=(1, -3, 1, -1, 2) and b3=(-3, 4, 1, 2, 1). Find the projection of x=(-1, -9, -1, 4, 1) into span(b1, b2, b3). Show your work.

Answer:
```math
x=(-1, -9, -1, 4, 1)
```
```math
B=
\begin{bmatrix}
b_1 & b_2 & b_3
\end{bmatrix}=
\begin{bmatrix}
0 & 1 & -3\\
-1 & -3 & 4\\
2 & 1 & 1\\
0 & -1 & 2\\
2 & 2 & 1
\end{bmatrix}
```
```math
B^T=
\begin{bmatrix}
0 & -1 & 2 & 0 & 2\\
1 & -3 & 1 & -1 & 2\\
-3 & 4 & 1 & 2 & 1
\end{bmatrix}
```
Therefore, projection of $x$ into $span(b1, b2, b3)$ is that $\pi(x)=B(B^TB)^{-1}B^Tx=(1, -5, -1, -2, 3)$

12. Find the distance between the projection of x and span(b1, b2, b3) in Q11. Show your work.

Answer:
