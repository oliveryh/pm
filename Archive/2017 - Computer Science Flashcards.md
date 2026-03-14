# Resources

https://people.cs.umass.edu/~barring/cs611/lecture/

# MAT

[MAT Syllabus](https://www.cs.ox.ac.uk/admissions/undergraduate/how_to_apply/syllabus_2018.pdf)

## Polynomials

START
Basic
What is the quadratic formula?
Back: $x = \frac{-b\pm\sqrt{b^2-4ac}}{2a}$
<!--ID: 1612296892074-->
END

START
Basic
What is the completing the square 
Back: Put the quadratic into the form $y = a(x\pm b)^2 + c$
<!--ID: 1612637986153-->
END

## Algebra

## Differentiation

START
Basic
Define the product rule for differentiation if $h(x) = f(x)g(x)$
Back: $h'(x) = f'(x)g(x) + f(x)g'(x)$
<!--ID: 1612298372071-->
END

START
Basic
What is the derivative of $h(x) = f(g(x))$
Back: $h'(x) = f'(g(x))\cdot g'(x)$
<!--ID: 1612298372090-->
END

START
Basic
If $f$ and $g$ are functions. What is the derivative of $\frac{f}{g}$
Back: $\frac{f}{g}' = \frac{f'g - g'f}{g^2}$
<!--ID: 1612298372109-->
END

START
Basic
$\frac{d}{dx} (e^{ax}) = ?$
Back: $\frac{d}{dx} (e^{ax}) = ae^{ax}$
<!--ID: 1612298372127-->
END

START
Basic
$\frac{d}{dx} (\log_c{x}) = ?$
Back: $\frac{d}{dx} (\log_c{x}) = \frac{1}{x\ln(c)}$
<!--ID: 1612298372148-->
END

START
Basic
$\frac{d}{dx} (\ln(x)) = ?$
Back: $\frac{d}{dx} (\ln(x)) = \frac{1}{x}$
<!--ID: 1612298372166-->
END

START
Basic
$\frac{d}{dx} (x^x) = ?$
Back: $\frac{d}{dx} (x^x) = x^x(1 + \ln x)$
<!--ID: 1612298372185-->
END

START
Basic
$\frac{d}{dx} (\sin(x)) = ?$
Back: $\frac{d}{dx} (\sin(x)) = \cos(x)$
<!--ID: 1612298372206-->
END

START
Basic
$\frac{d}{dx} (\cos(x)) = ?$
Back: $\frac{d}{dx} (\cos(x)) = -\sin(x)$
<!--ID: 1612298372227-->
END

START
Basic
$\frac{d}{dx} (\tan(x)) = ?$
Back: $\frac{d}{dx} (\tan(x)) = \sec^2(x) = 1 + \tan^2(x)$
<!--ID: 1612298372248-->
END

## Integration

START
Basic
Integrate: $\int e^{ax} \space dx$
Back: $\frac{1}{a}e^{ax} + C$
<!--ID: 1612470041455-->
END

START
Basic
Integrate: $\int a^x \space dx$
Back: $\frac{a^x}{\ln a} + C$
<!--ID: 1612470041469-->
END

START
Basic
Integrate: $\int \ln x \space dx$
Back: $x\ln x - x + C$
<!--ID: 1612470041486-->
END

START
Basic
Integrate: $\int \log_ax \space dx$
Back: $x\log_ax - \frac{x}{\ln a} + C$
<!--ID: 1612470041503-->
END

START
Basic
Describe the relation needed to do integration by parts
Back: $\int u \space dv = uv - \int v \space du$
<!--ID: 1612470041519-->
END

## Graphs

## Logarithms and Powers

START
Basic
Expand out the following: $\ln(xy)$
Back: $\ln(x) + \ln(y)$
<!--ID: 1612298391625-->
END

START
Basic
Expand out the following: $\ln(x/y)$
Back: $\ln(x) - \ln(y)$
<!--ID: 1612298391650-->
END

START
Basic
Expand out the following: $\ln(x^y)$
Back: $y\ln(x)$
<!--ID: 1612298391667-->
END

START
Basic
Evaluate the following: $\ln(e)$
Back: $1$
<!--ID: 1612298391685-->
END

START
Basic
Evaluate the following: $\ln(1)$
Back: $0$
<!--ID: 1612298391707-->
END

## Transformations

## Geometry

START
Basic
Give the equation for a circle
Back: $(x-h)^2 + (y-k)^2 = r^2$
Where:
- $x$ = x coordinate
- $y$ = y coordinate
- $h$ = x coordinate of center
- $y$ = y coordinate of center
- $r$ = radius of the circle
<!--ID: 1612470260508-->
END

## Trigonometry

## Sequences and Series

START
Basic
Outline the steps required to to proof by induction
Back: Show that $P(1)$ is true and that $P(k) \Rightarrow P(k+1)$
<!--ID: 1612470041539-->
END

START
Basic
Given an **arithmetic progression** $a, a+d, a+2d, ...$ give the $n$th term as a closed expression
Back: $a + (n-1)d$
<!--ID: 1612471140220-->
END

START
Basic
Given an **arithmetic progression** $a, a+d, a+2d, ...$ give the sum of the first $n$ terms as a closed expression
Back: $S_n = \frac{n}{2}(2a + (n-1)d)$
<!--ID: 1612471140236-->
END

START
Basic
Given a **geometric progression** $a, ar, ar^2, ar^3,...$ give the $n$th term as a closed expression
Back: $ar(n-1)$
<!--ID: 1612471140251-->
END

START
Basic
Given a **geometric progression** $a, ar, ar^2, ar^3,...$ give the sum of the first $n$ terms as a closed expression
Back: $S_n = \frac{a(1-r^n)}{1-r}$ valid only if $r\neq1$
<!--ID: 1612471140264-->
END

START
Basic
Given a **geometric progression** $a, ar, ar^2, ar^3,...$ give the sum of the progression to $\infty$ providing $\\|r\\| < 1$
Back: $S_\infty = \frac{a}{1-r}$ valid only if $\\|r\\| < 1$
<!--ID: 1612471140273-->
END

# Other

## Graph Theory

START
Basic
Provide an algorithm for finding Minimum Spanning Trees
Back:
Kruskal's algorithm is one way to find a MST
```
algorithm Kruskal(G) is
  F:= ∅
  for each v ∈ G.V do
    MAKE-SET(v)
  for each (u, v) in G.E ordered by weight(u, v), increasing do
    if FIND-SET(u) ≠ FIND-SET(v) then
      F:= F ∪ {(u, v)}
      UNION(FIND-SET(u), FIND-SET(v))
  return F
```
<!--ID: 1612471140281-->
END

START
Basic
What is the runtime of Kruskals' algorithm
Back:
$O(E\log V)$

Where $E$ is the number of edges, and $V$ is the number of vertices

1. Sort the edges by weight using comparison sort $O(E\log E)$ which as $E \leq V^2$ then this is $O(E\log V)$
2. Allows us to remove a minimum edge from $S$ in constant time
3. For each edge, we can then perform the $FIND-SET(u)$ functions in linear time and $UNION(u,v)$ in $O(\log V)$ time. leaving a complexity of $O(E \log V)$
<!--ID: 1612471707863-->
END

START
Basic
Show that the time complexity of Union can be amourtized to be $O(\log V)$
Back:
1. If we use a set of forests to determine which sets a node belongs to (the root of the tree determines it ID)
2. We can let one node become the parent of the other
3. We know that each time the cardinality of the tree is multiplied by at least 2
4. Therefore when updating the labels for the smaller set, there are be at most $O(\log V)$ updates.
<!--ID: 1613426140736-->
END

## Data Structures

START
Basic
What is a Disjoint-set Data Structure
Back: A collection of disjoint sets
<!--ID: 1612637986161-->
END

START
Basic
Detail the 3 functions of the Union-Find (Disjoint-set) Data Structure and their time complexities given the size of a graph $n$
Back: 
- Initialisation: $O(n)$
- MAKE-SET($i$): $O(1)$
- FIND($i$): $O(1)$
- UNION($i, j$): $O(n)$
<!--ID: 1612637986166-->
END

START
Basic
Define: Adjacency List
Back: A array of lists, each containing the neighbours of on of hte vertices.
<!--ID: 1613426140746-->
END

## Graph Algorithms

START
Basic
Write the algorithm for DFS Recursive
Back:
```
RECURSIVEDFS(v):
	if v is unmarked
		mark v
		for each edge vw
			RECURSIVEDFS(v)
```
<!--ID: 1613426140753-->
END

START
Basic
Write the algorithm for DFS Iterative
Back:
```
ITERATIVEDFS(v):
	PUSH(s)
	while the stack is non empty
		v <- POP
		if v is unmarked
			mark v
			for each edge vw
				PUSH(w)
```
<!--ID: 1613426140761-->
END

START
Basic
What is the runtime of DFS
Back: If we use a queue, push and pull can we done in $O(1)$ time. Therefore we would take $O(V + E)$ time.
<!--ID: 1613426140769-->
END

START
Basic
What is the runtime of BFS
Back: If we use a queue, push and pull can we done in $O(1)$ time. Therefore we would take $O(V + E)$ time.
<!--ID: 1613426140776-->
END

TODO: Basic FDA stuff

# Modules

## CS301

START
Basic
Define: NP-Hard
Back: A problem $A$ is NP-Hard if for every $L \in NP, L$ cook reduces to $A$ in polynomial time
<!--ID: 1613077177805-->
END

START
Basic
Define: Knapsack Problem
Back:
- Given $n$ objects and a "knapsack"
- Item $i$ has value $v_i > 0$ and weighs $w_i > 0$
- Knapsack can carry weight up to $W$
- Goal: Fill knapsack so as to maximise total value
<!--ID: 1613077177814-->
END

START
Basic
Define: Turing Machine
Back:
- Set of symbols (0, 1, Blank and other)
- Set of states ($q_{start}$, $q_{end}$, other)
- Set of transition functions
<!--ID: 1613077177820-->
END

START
Basic
Define: Halting Problem
Back:
HALT is not computable
$$
HALT(\alpha, x) = \left\{
	\begin{array}{ll}
		1 & M_\alpha \mbox{halts on input }x \\
		0 & \mbox{otherwise}
	\end{array}
\right.
$$
<!--ID: 1613077177826-->
END

START
Basic
Define: Polynomial-time Karp Reduction
Back: A language $L$ is polynomial-time Karp reducible to a language $L'$ if there exists a polynomial-time computable function $f$ such that for every $x$, $f(x)\in L'$ if and only if $x \in L$

Notation: $L \leq_P L'$
<!--ID: 1613077177831-->
END

START
Basic
Define: P
Back: A language $L$ is in P if there exists a Turing Machine $M$ and a polynomial $T$ such that
- $\forall x$, $M$ terminates in at most $T(|x|)$ steps
- If $x \in L$ then $M$ accepts $x$
- If $x \not\in L$ then $M$ rejects $x$
<!--ID: 1613077177837-->
END

START
Basic
Define: NP (Non-deterministic Polynomial Time)
Back: A language $L$ is in NP if there exists TM $M$ and polynomial $T$ such that 
- $\forall x$, $M$ terminates in at most $T(|x|)$ steps
- If $x \in L$ then there is a certificate $t \in \{0,1\}^{p(|x|)}$ such that $M$ accepts $\langle x,t \rangle$
- If $x \not\in L$, then for any string $t \in \{0,1\}^{p(|x|)}$, $M$ rejects $\langle x,t \rangle$
<!--ID: 1613077177843-->
END

START
Basic
Prove $P \subseteq NP$
Back: For any given problem $X\in P$, there exists a poly-time TM $M$ that decides $X$. Then $M'(\langle x, t \rangle) = M(x)$
<!--ID: 1613077177849-->
END

START
Basic
Define: NP-Hard
Back: A Problem $A$ is NP-Hard if for every $L \in NP$, $L$ reduces (in the cook sense) to $A$ in polynomial time
END

START
Basic
Define: NP-Complete
Back: A problem $Y$ is in NP is NP-Complete if for every problem $X$ in NP, $X\leq_P Y$
<!--ID: 1613077177855-->
END

# Algorithms Book