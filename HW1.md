# CSDS 133 Written Homework 1


1. Write a short essay (~300 words) about the positive impacts of data science on our lives. This could include some of the applications discussed in class, or other impacts you have read about elsewhere. Cite all sources appropriately.

Answer:

Data science benefits people’s lives in a variety of ways. For companies and businesses, data science can be utilized to identify noteworthy data and pattern, develop predictive fraud propensity models using statistical, network, path, and big data approaches, and use these models to generate alerts, which help making prompt reactions when unusual data is detected. Moreover, by evaluating data obtained in the database, businesses can identify the best-selling products, determine when and where they can sell the most products. With this valuable information, businesses are able to offer the correct products at appropriate time and develop new products to fulfill the customers’ needs. With regard to environment protection, data science can help prevent the climate change’s damage, which negatively affects people’s lives. A reporting platform called Climate Data Partnership was designed with the collaboration of The California Air Resources Board, Plant Labs and the Environmental Defense Fund to support more focused climate control actions. With data collected from distinct, overlapping data projects, including two satellite deployments to track climate change on the Earth from outer space, and data from organizations monitoring deforestation and other information on the ground, we may have a clearer view of the Earth’s current condition, find answers to the big questions about the climate change, and increase transparency regarding how global supply networks affect the Earth. Data science is also a crucial tool to help people meet essential needs. Each year, Benefits Data Trust, a grantee of The Rockefeller Foundation organization, utilizes the data, policy change, targeted outreach, and new technologies to help people receive essential assistance. Benefits Data Trust successfully submitted more than 800,000 applications and secured more than 7 billion dollars in benefits and services that aided people and families in achieving financial stability and opened a better path for them in the future.

2. Write a short essay (~300 words) about the negative impacts of data science on our lives. This could include some of the issues discussed in class, or other impacts you have read about elsewhere. Cite all sources appropriately.

Answer:

Data science has had a profound impact on many aspects of our lives, but it is important to consider the negative impacts as well. 

One major concern is privacy. As more and more data is collected about individuals, it becomes increasingly easy for organizations and governments to track and monitor people. This can lead to violations of privacy and civil liberties, as well as discrimination based on data-driven profiling.

Another negative potential for data science is creating biases and inequalities. The algorithm to collect data may contain certain biases
and lead to discriminatory outcomes, such as denying loans or job opportunities to certain groups of people, especially when people are more and more reliant on data and technologies. Furthermore, the biased data will be used to analyze and draw important conclusion, creating a feedback loop on biased data and information.

 The impact on jobs of data is also disturbing, especially on creative jobs. Recently there is a concerning problem on AI-paintings that questions both the jobs demand and the intellectual property of artworks. It is a concerning issue that the AI use human works without consent to synthesize their products and those products themselves take away the creators' livelihood.

Finally, there is a risk that data science will be used to manipulate and deceive people. For example, the chatbot ChatGPT is now very popular among people, and though it has an enormous knowledge and data, people can also use that to create false data on the internet. If this problem is not properly handled, misinformation will be all over the most used source of information - the internet. Imagine that we have to live in a society which we have to doubt everything we read on the internet, it would be extremely chaotic.

Overall, while data science has many positive impacts, it is important to be aware of the potential negative impacts and work to mitigate them.

References:

- Lecture contents from Professor Soumya Ray
- "All the Ways Hiring Algorithms Can Introduce Bias" by Miranda Bogen, https://hbr.org/2019/05/all-the-ways-hiring-algorithms-can-introduce-bias

3. Research one data science application (it could be one we have discussed in class) and write a short essay (~300 words) describing the application, the approach and results. Try to give details about the operational stack (how the data was stored, the file system, how it was queried and so on) if you can find the information. Cite all sources appropriately.

Answer:
Data science is becoming increasingly important in healthcare, from improving the efficiency of care to helping diagnose and treat disease. One example of data science being used in healthcare is the use of natural language processing (NLP) to automatically extract information from medical records. NLP uses a variety of techniques to process and understand medical concepts in text, such as diseases, symptoms, treatments, and medications. It can also be used to identify relationships between medical concepts, such as which treatments are most effective for a particular disease.

In healthcare applications, NLP is typically used in combination with other data sources such as patient histories, laboratory test results, and imaging scans. The data is stored in a variety of formats, such as structured databases, unstructured text files, and multimedia files. To query this data, various methods such as SQL and NoSQL are used.

NLP has been used in a variety of healthcare applications. For example, it has been used to automatically identify symptoms in patient records, risk factors for certain diseases, and drug to drug iteractions. Hence NLP is applied to generate alerts when certain conditions are met, such as when a patient is prescribed an inappropriate medication.

Overall, NLP is a powerful tool for extracting information from medical records and other sources of healthcare data. With the increasing availability of healthcare data, NLP can be used to identify important insights and improve the quality of care. Healthcare professionals may develop a thorough image of each patient, comprehend the aspects that contribute to better patient care, and cut costs by utilizing the power of data science.
Sources:
-   "Natural Language Processing (NLP)". https://en.wikipedia.org/wiki/Natural_language_processing. 
-   "Natural Language Processing in Healthcare". https://www.healthcatalyst.com/insights/how-healthcare-nlp-taps-unstructured-datas-potential
-   "Data types (Transact-SQL)". https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16

4. Consider vectors of size 2. Show that the Euclidean norm of such vectors satisfy the three properties of a norm.

Answer:

Let a and b be 2 arbitrary vectors of size 2.\
$a=[a_1, a_2], \ b=[b_1,b_2]$\
The Euclidean norm of vector a is that $||a||_2=\sqrt{a_1^2+a_2^2}$\
The Euclidean norm of vector b is that $||b||_2=\sqrt{b_1^2+b_2^2}$\
Prove that they satisfy the three properties of a norm:
* Prove that $||a||=0$ if and only if $a=(0,0)$:
  * If $\sqrt{a_1^2+a_2^2}=||a||_2=0$, then $a_1^2+a_2^2=0$\
$a_1^2\geq0$ and $a_2^2\geq0$, so $a_1^2+a_2^2\geq0$\
$a_1^2+a_2^2=0$ only when $a_1=a_2=0$\
Therefore, if $||a||_2=0, \ a=(a_1, a_2)=(0,0)$
  * If $a_1=a_2=0, ||a||_2= \sqrt{a_1^2+a_2^2}=\sqrt{0^2+0^2}=0$
* Prove that $||ca||_2=|c|.||a||_2$ with scalar c:\
$||ca||_2=\sqrt{(ca_1)^2+(ca_2)^2}=\sqrt{c^2(a_1^2+a_2^2)}=\sqrt{c^2}.\sqrt{a_1^2+a_2^2}=|c|.\sqrt{a_1^2+a_2^2}=|c|.||a||_2$
* Prove that $||a+b||_2 \leq ||a||_2+||b||_2$:\
$(||a+b||_2)^2=(||(a_1+b_1, a_2+b_2)||_2)^2=(\sqrt{(a_1+b_1)^2+(a_2+b_2)^2})^2=(a_1+b_1)^2+(a_2+b_2)^2=a_1^2+b_1^2+a_2^2+b_2^2+2a_1b_1+2a_2b_2=a_1^2+a_2^2+b_1^2+b_2^2+2(a_1b_1+a_2b_2)$\
$(||a||_2+||b||_2)^2=||a||_2^2+||b||_2^2+2||a||_2.||b||_2=a_1^2+a_2^2+b_1^2+b_2^2+2\sqrt{{(a_1^2+a_2^2)(b_1^2+b_2^2)}}$\
$2\sqrt{{(a_1^2+a_2^2)(b_1^2+b_2^2)}}=2\sqrt{a_1^2b_1^2+a_1^2b_2^2+a_2^2b_1^2+a_2^2b_2^2}\geq 2\sqrt{a_1^2b_1^2+a_2^2b_2^2+2a_1b_2a_2b_1}=2|a_1b_1+a_2b_2|\geq 2(a_1b_1+a_2b_2)$\
Therefore, $(||a+b||_2)^2 \leq (||a||_2+||b||_2)^2$, which means that $||a+b||_2 \leq ||a||_2+||b||_2$ because $||a+b||_2, ||a||,$ and $||b||$ are non-negative.

5.  Consider vectors of size 2. Show that the Euclidean distance between such vectors satisfy the three properties of a metric.

Answer:  For vectors u and v of size 2, we have the Euclidean distance: $d(u,v) =‖u-v‖_2 = \sqrt[2]{(u-v)\cdot(u-v)}$. 
We can proof the $1^{st}$ metric property directly  : 
```math
\sqrt[2]{(u-v)\cdot(u-v)}  =\sqrt[2]{(u_1-v_1)^2+(u_2-v_2)^2}=\sqrt[2]{(v_1-u_1)^2+(v_2-u_2)^2} = \sqrt[2]{(v-u)\cdot(v-u)}=‖v-u‖_2=d(v, u) = d(u,v)
```
Similarly for the $2^{nd}$ property: 
$\quad$ For $u=v\Longrightarrow u-v=0:$
					 $d(u,v) = \sqrt[2]{(u-v)\cdot(u-v)}=\sqrt[2]{0\cdot0}=0$
$\quad$ For $u\neq v\Longrightarrow u-v\neq0:$	
```math
				      d(u,v) = \sqrt[2]{(u-v)\cdot(u-v)}=\sqrt[2]{(u_1-v_1)^2+(u_2-v_2)^2} =\sqrt[2]{a^2+b^2} \geq\sqrt[2]{0+0}=0 (\forall u-v\neq 0 \Longrightarrow a , b  \neq 0 | a=u_1-v_1; b = u_2-v_2)
```				      
				      
				      
				      
				      
Finally, we prove the third property by contradiction:
$(u,y) + d(y,v) < d(u,v)$

6. Consider the vectors $[1, 2, 3]$ and $[-1, -1, 0]$. Compute the Manhattan norms of each vector and the Manhattan distance between them.

Answer:
* Set $a=[1, 2, 3]$, $b=[-1, -1, 0]$.
* Calculate the 1-norm for the vectors.
$$||a||_1 = |1+2+3| = 6 ; ||b||_1 = |-1-1+0| = 2$$

* Calculate the 1-norm distance for 2 vectors.
$$||a-b||_1=|1-(-1)| + |2-(-1)| + |3-0|= 8$$

7. Are the following vectors linearly independent? $[2, -1, 3]$, $[1, 1, -2]$ and $[3, -3, 8]$?

Answer: We can calculate the determinant of a $3\times3$ matrix $$|2, 1, 3|$$ $$|-1, 1, -3|$$ $$|3,-2,8|$$ formed by the three vector to determinate whether the vectors are linearly dependent or not:
$\quad$ By using cofactor expansion the answer is given by:
					$$ 2\times (-1)^{1+1}\times [(1 \times 8)- (-3\times-2)] + $$ $$ 1\times (-1)^{1+2}\times [(-1 \times 8)- (-3\times3)] + 3\times (-1)^{1+3}\times [(-1 \times -2)- (3\times1)] $$ $$ = 4-1-3=0$$
Since the matrix determinant is zero, the vectors are linearly dependent

8. Write $[1, -2, 5]$ as a linear combination of $[1, 1, 1]$, $[1, 2, 3]$ and $[2, -1, 1]$.

Answer:

```math
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
```

Explanation:

* First I compute the matrices that we need to find combination into a big matrix.

```math
\left[
    \begin{array}{ccc|c}
        1&1&2&1\\
        1&2&-1&-2\\
        1&3&1&5
    \end{array}
\right]
```

* Then I use row reductions to make an upper triangular form.
```math
\left[
    \begin{array}{ccc|c}
        1&1&2&1\\
        0&1&-3&-3\\
        0&0&5&10
    \end{array}
\right]
```

* If we transfer this matrix into equations, it looks like:
```math
\begin{cases} 1a + 1b + 1c = 1 \\ 0a + 1b -3c = -3 \\ 0a + 0b + 5c =10 \end{cases}
```

* The simple steps remain. I back-substitute and find out $ a=-6; b=3; c=2. $


9. Compute the matrix products $AB$ where: (i) $A=[1, 2, 3; 4, 5, 6; 7, 8, 9]$ and $B=[1, 1, 0; 0, 1, 1; 1, 0, 1]$ (ii) $A=[1, 2, 1, 2; 4, 1, -1, -4]$ and $B=[0, 3; 1, -1; 2, 1; 5, 2]$ (iii) $A=[0, 3; 1, -1; 2, 1; 5, 2]$ and $B=[1, 2, 1, 2; 4, 1, -1, -4]$.

Answer:
```math
(i)\
$AB=\left[
    \begin{array}{ccc}
        1&2&3\\
        4&5&6\\
        7&8&9\\
    \end{array}
\right]
\left[
    \begin{array}{ccc}
        1&1&0\\
        0&1&1\\
        1&0&1\\
    \end{array}
\right]=\left[
    \begin{array}{ccc}
        1\times1+2\times0+3\times1&1\times1+2\times1+3\times0&1\times0+2\times1+3\times1\\
        4\times1+5\times0+6\times1&4\times1+5\times1+6\times0&4\times0+5\times1+6\times1\\
        7\times1+8\times0+9\times1&7\times1+8\times1+9\times0&7\times0+8\times1+9\times1\\
    \end{array}
\right]=\left[
    \begin{array}{ccc}
        4&3&5\\
        10&9&11\\
        16&15&17\\
    \end{array}
\right]
$\
(ii)\
$AB=\left[
    \begin{array}{cccc}
        1&2&1&2\\
        4&1&-1&-4\\
    \end{array}
\right]
\left[
    \begin{array}{cc}
        0&3\\
        1&-1\\
        2&1\\
        5&2\\
    \end{array}
\right]=\left[
    \begin{array}{cc}
        1\times0+2\times1+1\times2+2\times5&1\times3+2\times(-1)+1\times1+2\times2\\
        4\times0+1\times1+(-1)\times2+(-4)\times5&4\times3+1\times(-1)+(-1)\times1+(-4)\times2\\
    \end{array}
\right]=\left[
    \begin{array}{cc}
        14&6\\
        -21&2\\
    \end{array}
\right]
$\
(iii)\
$AB= \left[
    \begin{array}{cc}
        0&3\\
        1&-1\\
        2&1\\
        5&2\\
    \end{array}
\right]
\left[
    \begin{array}{cccc}
        1&2&1&2\\
        4&1&-1&-4\\
    \end{array}
\right]=\left[
    \begin{array}{cccc}
        0\times1+3\times4&0\times2+3\times1&0\times1+3\times(-1)&0\times2+3\times(-4)\\
        1\times1+(-1)\times4&1\times2+(-1)\times1&1\times1+(-1)\times(-1)&1\times2+(-1)\times(-4)\\
        2\times1+1\times4&2\times2+1\times1&2\times1+1\times(-1)&2\times2+1\times(-4)\\
        5\times1+2\times4&5\times2+2\times1&5\times1+2\times(-1)&5\times2+2\times(-4)\\
    \end{array}
\right]=\left[
    \begin{array}{cccc}
        12&3&-3&-12\\
        -3&1&2&6\\
        6&5&1&0\\
        13&12&3&2
    \end{array}
\right]
$
```
