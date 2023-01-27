# CSDS 133 Written Homework 1

**Instructions:** Each question is worth 10 points unless otherwise stated. Write your answers below the question. Only one answer is needed from a group unless otherwise specified. Each answer should be formatted so it renders properly on github. **Answers that do not render properly may not be graded.** Each person in each group must commit and push their own work. You will not get credit for work committed/pushed by someone else even if done by you. Each person is expected to do an approximately equal share of the work, as shown by the git logs. **If we do not see evidence of equal contribution from the logs for someone, their individual grade will be reduced substantially.** Please comment the last commit with "FINAL COMMIT" and **enter the final commit ID in canvas by the due date.**

1. Write a short essay (~300 words) about the positive impacts of data science on our lives. This could include some of the applications discussed in class, or other impacts you have read about elsewhere. Cite all sources appropriately.

Answer:

2. Write a short essay (~300 words) about the negative impacts of data science on our lives. This could include some of the issues discussed in class, or other impacts you have read about elsewhere. Cite all sources appropriately.

Answer:

Data science has had a profound impact on many aspects of our lives, but it is important to consider the negative impacts as well. One major concern is privacy. As more and more data is collected about individuals, it becomes increasingly easy for organizations and governments to track and monitor people. This can lead to violations of privacy and civil liberties, as well as discrimination based on data-driven profiling.

Another concern is the potential for data science to perpetuate existing biases and inequalities. Algorithms are only as unbiased as the data they are trained on, and if that data is biased, the algorithm will likely perpetuate those biases. This can lead to discriminatory outcomes, such as denying loans or job opportunities to certain groups of people, especially when people are more and more reliant on data and technologies.

A third concern is the impact on jobs, especially on creative jobs. Recently there is a concerning problem on AI-paintings that questions both the jobs demand and the copyrights of artworks. It is a concerning issue that the AI use human works without consent to synthesize their products and those products themselves take away the creators' livelihood.

Finally, there is a risk that data science will be used to manipulate and deceive people. For example, the chatbot ChatGPT is now very popular among people, and though it has an enormous knowledge and data, people can also use that to create false data on the internet. If this problem is not properly handled, misinformation will be all over the most used source of information - the internet. Imagine that we have to live in a society which we have to doubt everything we read on the internet, it would be extremely chaotic.

Overall, while data science has many positive impacts, it is important to be aware of the potential negative impacts and work to mitigate them.

References:

- Lecture contents from Professor Soumya Ray
- "All the Ways Hiring Algorithms Can Introduce Bias" by Miranda Bogen, https://hbr.org/2019/05/all-the-ways-hiring-algorithms-can-introduce-bias

3. Research one data science application (it could be one we have discussed in class) and write a short essay (~300 words) describing the application, the approach and results. Try to give details about the operational stack (how the data was stored, the file system, how it was queried and so on) if you can find the information. Cite all sources appropriately.

Answer:

4. Consider vectors of size 2. Show that the Euclidean norm of such vectors satisfy the three properties of a norm.

Answer:

5.  Consider vectors of size 2. Show that the Euclidean distance between such vectors satisfy the three properties of a metric.

Answer:

6. Consider the vectors $[1, 2, 3]$ and $[-1, -1, 0]$. Compute the Manhattan norms of each vector and the Manhattan distance between them.

Answer:
* Set $a=[1, 2, 3]$, $b=[-1, -1, 0]$.
* Calculate the 1-norm for the vectors.
$$
a = |1+2+3| = 6 ; b = |-1-1+0| = 2
$$

* Calculate the 1-norm distance for 2 vectors.
$$
||a-b||_1=|1-(-1)| + |2-(-1)| + |3-0|= 8
$$

7. Are the following vectors linearly independent? $[2, -1, 3]$, $[1, 1, -2]$ and $[3, -3, 8]$?

Answer:

8. Write $[1, -2, 5]$ as a linear combination of $[1, 1, 1]$, $[1, 2, 3]$ and $[2, -1, 1]$.

Answer:

$$
\begin{gather}
[1, -2, 5]
=
-6
 [1, 1, 1]
+
3
 [1, 2, 3]
+
2
 [3, -3, 8]
\end{gather}
$$

Explanation:

* First I compute the matrices that we need to find combination into a big matrix.

$$
	% \begin{bmatrix}
	% 1 & 1 & 2\\
	% 1 & 2 & -1\\
	% 1 & 3 & 1\\
    % \right\rvert
	% \end{bmatrix}


$$

$$\left[
    \begin{array}{ccc|c}
        1&1&2&1\\
        1&2&-1&-2\\
        1&3&1&5\\
    \end{array}
\right]$$

* Then I use row reductions to make an upper triangular form.
$$\left[
    \begin{array}{ccc|c}
        1&1&2&1\\
        0&1&-3&-3\\
        0&0&5&10\\
    \end{array}
\right]$$

* If we transfer this matrix into equations, it looks like:
$$
\begin{cases} 1a + 1b + 1c = 1 \\ 0a + 1b -3c = -3 \\ 0a + 0b + 5c =10 \end{cases}
$$

* The simple steps remain. I back-substitute and find out $ a=-6; b=3; c=2. $


9. Compute the matrix products $AB$ where: (i) $A=[1, 2, 3; 4, 5, 6; 7, 8, 9]$ and $B=[1, 1, 0; 0, 1, 1; 1, 0, 1]$ (ii) $A=[1, 2, 1, 2; 4, 1, -1, -4]$ and $B=[0, 3; 1, -1; 2, 1; 5, 2]$ (iii) $A=[0, 3; 1, -1; 2, 1; 5, 2]$ and $B=[1, 2, 1, 2; 4, 1, -1, -4]$.

Answer:
