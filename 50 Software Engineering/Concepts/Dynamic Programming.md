*Recursion without repetition*

# How to Solve a Dynamic Programming Problem

1. Formulate the problem recursively
2. Build solutions to the recursion in a bottom-up nature
3. Choose a memoization data structure to store these values (usually but not always a multidimensional array)
4. Consider the order to run the algorithm
5. Take not of space and running time

# Fibonacci Sequence

The fibonacci recursion can be formulated in three ways:

**Recursively**
```
RECFIBO(n):
	if n = 0:
		return 0
	else if n = 1
		return 1
	else
		return RECFIBO(n-1) + RECFIBO(n-2)
```

**Iteratively**
```
ITERFIBO(n):
	F[0] = 0
	F[1] = 1
	for i from 2 to n:
		F[i] = F[i-1] + F[i-2]
	return F[n]
```

Adding two $n$-digit numbers takes $O(n)$ time, so the `ITERFIBO` function takes $O(n^2)$ time.

**Matrix Multiplication**

Suppose $F_n = F_{n-1} + F_{n-2}$ is the definition of the fibonacci numbers, then we have that: 

$$\begin{bmatrix}0 & 1\\1 & 1\end{bmatrix}^n\begin{bmatrix}0 \\1\end{bmatrix} = \begin{bmatrix}F_{n-1} \\ F_n\end{bmatrix}$$

The fastest integer multiplication algorithm is $O(nlogn)$ which is an improvements on the $O(n^2)$ iterative solution.

# Edit Distance

Edit Distance is the minimum number of letter insertions, deletions, and substitutions that need to be made between two strings such the one string can be transformed to be the other.

We can consider the following recursive definition:

Let $A[1 .. n]$ and $B[1..m]$ be two strings.

Let $Edit(i, j)%$ denote the edit distance between the prefixes $A[1..i]$ and $B[1..j]$. We then have the following:

$$
Edit(i, j) =
\left\{
	\begin{array}{ll}
		i  & \mbox{if } i=0 \\
		j & \mbox{if } j=0 \\
		\min \left\{
			\begin{array}{ll}
				Edit(i, j-1) + 1 \\
				Edit(i-1, j) + 1 \\
				Edit(i-1, j-1) + [A[i] \neq B[j]]
			\end{array}
		\right\} & \mbox{otherwise}
	\end{array}
\right.
$$

This can be memoized in an $n\times m$ matrix and since we can calculate each $Edit(i,j)$ in $O(1)$ time then this overall takes $O(mn)$ time

# Subset Sum

The Subset Sum is a problem that given an array $X[1..n]$ of positive integers, are there any subsets to give an integer $T$.

We can find the recursive formula by considering that there is a subset of $X$ that sums to $T$ if and only if one of the following statements is true:

- There is a subset of $X$ that includes $x$ and whose sum is $T$
- There is a subset of $X$ that excludes $x$ and whose sum is $T$

Therefore can let $SS(i,t)$ to be $\text{True}$ if and only if some subset of $X[i..n]$ sums to $t$

We can define this as the following recursive formula.

$$
SS(i, t) =
\left\{
	\begin{array}{ll}
	\mbox{True}   & \mbox{if } t=0 \\
	\mbox{False}   & \mbox{if } t<0 \mbox{ or } i>n \\
	SS(i+1,t) \vee S(i+1, t-X[i])  & \mbox{otherwise}
	\end{array}
\right.
$$

# Resources

## Links

[Algorithms - Chapter 3: Dynamic Programming](http://jeffe.cs.illinois.edu/teaching/algorithms/book/03-dynprog.pdf)