# CSDS 133 Written Homework 2
**Instructions:** Each question is worth 10 points unless otherwise stated. Write your answers below the question. Only one answer is needed from a group unless otherwise specified. Each answer should be formatted so it renders properly on github. **Answers that do not render properly may not be graded.** Each person in each group must commit and push their own work. You will not get credit for work committed/pushed by someone else even if done by you. Each person is expected to do an approximately equal share of the work, as shown by the git logs. **If we do not see evidence of equal contribution from the logs for someone, their individual grade will be reduced substantially.** Please comment the last commit with "FINAL COMMIT" and **enter the final commit ID in canvas by the due date.**

Note: Questions which ask you to "prove" something often require a general argument rather than specific examples. For other questions, please show your work rather than just the final answer for full credit.

1. Find the angle between the vectors (1, 2) and (-1, -1). Show your work.

Answer:

2. Find a vector orthogonal to (4, 1, -2). Show your work. 

Answer:


3. Suppose U is the set of vectors {(1, 1, 1), (1, 2, 3), (2, 2, 2), (3, 4, 5), (0, 1, 0), (1, 0, 1)}. What is the dimensionality of U? Show your work.

Answer: First I convert set U into a matrix. Then I use Julia to find the rank of this matrix, which is 3.

```julia
A = [1 1 1; 1 2 3; 2 2 2; 3 4 5; 0 1 0; 1 0 1]
println(rank(A))
```

4. Add vectors to U in Q3 to create a new set V so that (i) dim(V)=dim(U) and (ii) V has an orthonormal basis B. Write out the basis B and show it is orthonormal.

Answer: 

5.  For each vector in V in Q4 that is not in B, find its coordinates with respect to B. Show your work.

Answer: 

6. Prove that for any set of vectors U with a finite basis B, each vector in U has unique coordinates with respect to B.

Answer: 

7. Compute the outer product between the vectors: (i) (-1, 1) and (2, 3) (ii) (1, 3, 5, 7) and (0, 1, 1, 0). Show your work.

Answer: 

8. Compute the unit vector in the same direction as (i) (1, 3) and (ii) (0.1, 0.2, 0.4, 0.2). Show your work.

Answer:

9. Suppose B is a matrix containing n orthonormal basis vectors as the columns. What is $B^{T}B$ and why?

Answer:

10. Suppose A=[2, 4, 3; 0, 1, 3] and B=[-2, -1, 3; 6, -7, 7]. Find the ranks of A, B and A+B. Show your work.

Answer:

11. Suppose b1=(0, -1, 2, 0, 2), b2=(1, -3, 1, -1, 2) and b3=(-3, 4, 1, 2, 1). Find the projection of x=(-1, -9, -1, 4, 1) into span(b1, b2, b3). Show your work.

Answer: 

12. Find the distance between the projection of x and span(b1, b2, b3) in Q7. Show your work.

Answer: 
