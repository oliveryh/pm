# Courses

- [x] Learning How to Learn - Cousera (Completed January 19, 2020 )
- [x] [Building data-driven web apps with Flask and SQLAlchemy](https://training.talkpython.fm/courses/explore_flask/building-data-driven-web-applications-in-python-with-flask-sqlalchemy-and-bootstrap)
- [x] [Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex)](https://www.udemy.com/course/vuejs-2-the-complete-guide)
- [Super Learner 2](https://www.udemy.com/become-a-superlearner-2-speed-reading-memory-accelerated-learning/learn/)
- [Python 3 Deep Dive (Part 1: Functional)](https://www.udemy.com/course/python-3-deep-dive-part-1/)
- [Stanford CS 224N | Natural Language Processing with Deep Learning](https://web.stanford.edu/class/cs224n/)
- [Build a Content Aggregator in Python – Real Python](https://realpython.com/build-a-content-aggregator-python)
- [Python Expertise Level Self-Assessment](https://safjan.com/python-expertise-level-self-assessment/)
- https://training.talkpython.fm/courses/build-an-audio-ai-app-with-python-and-assemblyai

# Other

- [Python Morsels](https://www.pythonmorsels.com)
- [interactive-coding-challenges (donnemartin) (26.3k ★)](https://github.com/donnemartin/interactive-coding-challenges) - 120+ interactive Python coding interview challenges (algorithms and data structures). Includes Anki flashcards.
- [Ask HN: High quality Python scripts or small libraries to learn from | Hacker News](https://news.ycombinator.com/item?id=40085887)
- [:Generator Tricks for Systems Programmers](https://www.dabeaz.com/generators/)

# Books

- [Python Basics](https://realpython.com/courses/python-basics-book/)
- [Python Tricks](https://realpython.com/courses/python-tricks-book/)
- Effective PyCharm (AE225857-8ACC43AD-91D19D55-8D885C40)
- [The Pragmatic Programmer](https://www.nceclusters.no/globalassets/filer/nce/diverse/the-pragmatic-programmer.pdf)

# Related

- [[Conda]]
- [[Python Libraries]]

# Further Reading

- [Python Best Practises](https://sourcery.ai/blog/python-best-practices/)
- [Guide to Concurrency in Python with Asyncio ⋆ Mark McDonnell](https://www.integralist.co.uk/posts/python-asyncio/)
- [Working with Configuration in Python](https://tech.preferred.jp/en/blog/working-with-configuration-in-python/)
- [Let's build a webserver](https://ruslanspivak.com/lsbaws-part1/)
- [Array Programming in Numpy](https://www.nature.com/articles/s41586-020-2649-2)
- [How virtual environments work](https://snarky.ca/how-virtual-environments-work/)
- [Comprehensive Python Cheatsheet](https://gto76.github.io/python-cheatsheet/#decorator)

# Resources

## Type Checking

- [Exhaustiveness Checking with Mypy | Haki Benita](https://hakibenita.com/python-mypy-exhaustive-checking)
- [Python: better typed than you think | beepb00p](https://beepb00p.xyz/mypy-error-handling.html)
- [Python’s “type hints” are a bit of a disappointment to me | Hacker News](https://news.ycombinator.com/item?id=31114554)

## Modules

- [Autoformatting to PEP8 Standard](https://github.com/google/yapf)
- [Every dunder method in Python - Python Morsels](https://www.pythonmorsels.com/every-dunder-method/)

## Tutorials

- [Intermediate Python - YouTube Playlist](https://www.youtube.com/playlist?list=PLaL2yxczKLcDWDRB0ZrxsuKlupJU0Njje)
- [Best Practices for Python](https://gist.github.com/sloria/7001839)
- [Good logging practice](https://fangpenlin.com/posts/2012/08/26/good-logging-practice-in-python/)
- [Calm Code](https://calmcode.io) - Video tutorials for modern ideas and open source tools.

## Books

- [The Fundamentals of Python](https://python.cs.southern.edu/pythonbook/pythonbook.pdf)

## Code Snippets

- [Chris Albon - Notes On Using Data Science & Machine Learning](https://chrisalbon.com/)
- [Recursively Reload Modules](https://gist.github.com/shwang/09bd0ffef8ef65af817cf977ce4698b8)

# Tasks

- VIDEO: [Coding Tech, ▶ *What Does It Take To Be An Expert At Python?*, (2017)](https://youtu.be/7lmCu8wz8ro)

# Project Ideas

# Notes

## Functional Programming

- [ArjanCodes, ▶ *3 Simple Ideas From Functional Programming To Improve Your Code*, (2022)](https://youtu.be/4B24vYj_vaI)

## Project Structure

[Hitchiker's Guide to Python - Structure](https://docs.python-guide.org/writing/structure/)[Best Project Structure](https://stackoverflow.com/questions/193161/what-is-the-best-project-structure-for-a-python-application)

## Reading Files

**Converting a file of lines to a list**
`lineList = [line.rstrip('\n') for line in open(fileName)]`

## Logging

### Logging with a decorator function

```python
def run_with_logging(function):
    @wraps(function)
    def wrapped(*args, **kwargs):
        logging.basicConfig(filename='logs/' + function.__name__ + '.log', level=logging.DEBUG)
        logging.info('Starting at ' + str(datetime.now()))
        try:
            function(*args, **kwargs)
        except Exception as e:
            logging.exception(e)
            traceback_message = traceback.format_exc()
            send_an_email.send_email_with_error_message(traceback_message)
        logging.info('Finished at ' + str(datetime.now()))
    return wrapped
```

Then simply add the decorator `@run_with_logging` at the top of the main function

## Virtual Environments

[Python Docs - venv](https://docs.python.org/3/tutorial/venv.html)

Python projects often need packages and modules that are not part of the standard library. It is often the case that multiple projects cannot be satisfied by a global set of installed packages. The solution is to create a **virtual environment**, a self-contained directory tree that contains a python installation for a particular version of Python, plus additional packages.

### How to Use

*For more details, see [Installing packages using pip and virtualenv](https://packaging.python.org/guides/installing-using-pip-and-virtualenv/)*

### Installing **pip**

Pip is the reference package manager used to update and install packages

We can install/update pip using the following commands

```
py -m pip install --upgrade PIP
```

```
python3 -m pip install --user --upgrade pip
```

### Installing **virtualenv**

```
py -m pip install --user virtualenv
```

```
python3 -m pip install --user virtualenv
```

### Creating a Virtual Environment

After navigating to your project root directory, you can use one of the following commands

```
py -m virtualenv env
```

```
python3 -m virtualenv env
```

### Activating a Virtual Environment

Before you can start installing or using packages in your virtualenv you’ll need to activate it. Activating a virtualenv will put the virtualenv-specific python and pip executables into your shell’s PATH.

```
.\\env\\Scripts\\activate
```

```
source env/bin/activate
```

### Deactivating a Virtual Environment

You can deactivate the current virtual environment by typing `deactivate`

Virtual Environment

: A self-contained tree that contains a Python installation for a particular version of Python, plus additional packages.

```
It allows you to create a “virtual” isolated Python installation and install packages into that virtual installation
```

## Scope

There are 4 types of scope, *local*, *enclosing*, *global* and *built-in*

Local

: These are variables that are defined in the function body

Enclosing

:	Looking at the local scope of any enclosing functions

Global
:	These are variables that are defined in the main body of the file

Built-in
:	Names that are pre-assigned in Python such as function names (e.g.)

<span class="success-msg">**Tip:** LEGB can be used as an acronym to remember the order of precedence for the variables</span>

### Global and Local Scope

```
""" global and local scope example """
x = 'global x'

def test():
    y = 'local y'

def use_local_x():
    x = 'local x'
    print(x)

use_local_x() // prints 'local x'
print(x) // prints 'global x'

def use_global_x():
    global x
    x = 'local x'
    print(x)

use_global_x(): // prints 'local x'
print(x) // prints 'local x'
```

Try not to overuse the use of `global`. Generally we don't want to worry about the side-effects of altering variables outside our function.

### Built-in Scope

It is possible to overwrite built-in functions, therefore one should be careful to ensure they don't change the expected behaviour of a well-known function

```
""" built-in scope """
def min(list):
    return 1

m = min([10,20,30])
print(m) // prints 10 normally, prints 1 when min is define
```

### Enclosing Scope

This is used when an enclosed function calls a parameter that is not local. Therefore it then looks at the enclosing scope to determine the value of the variable

```
""" enclosing scope """
def outer():
    x = 'outer x'

    def inner():
        print(x)

    inner()
    print(x)

outer() // prints 'outer x', 'outer x' since print(x) in the inner function looks in the enclosing scope of outer to find the val of x
```

`nonlocal` allows us to use the local variables of enclosing functions (treating it effectively as a global variable for the function)

```
""" nonlocal keyword """
def outer():
    x = 'outer x'

    def inner():
        nonlocal x
        x = 'inner x'
        print(x)

    inner()
    print(x)

outer() // prints 'inner x', 'inner x' since inner() changes the value of x
```

## Slicing Lists and Strings

[YouTube: Intermediate Python - Slicing Lists and Strings](https://www.youtube.com/watch?v=ajrtAuDg3yw&index=4&list=PLaL2yxczKLcDWDRB0ZrxsuKlupJU0Njje)

### Slicing

In order to access a range of items in a list, we can slice it using the following syntax

```python
""" slice syntax """
my_list = [0,1,2,3,4,5,6,7,8,9]
print my_list[0:5] // list[start:end:step]
// prints [0,1,2,3,4] as end is non-inclusive

print my_list[5:] // prints from index 5 to the end of the list [5,6,7,8,9]
print my_list[:-1] // prints from the start to the penultimate value [0,1,2,3,4,5,6,7,8]
print my_list[:] // prints all of my_list
print my_list[2:-1:2] prints from index 2 to 8 with steps of 2 [2,4,6,8]
```

We can exploit this notation, to reverse a list

```
""" reverse a list """
my_list = [0,1,2,3,4,5,6,7,8,9]
print my_list[::-1] // prints [9,8,7,6,5,4,3,2,1,0]
```

Or remove "http://" from a URL

```
""" remove http from a URL """
url = "<http://www.google.com>"
print url[7:] //prints 'www.google.com'
```

## Comprehension

[YouTube: Intermediate Python - Comprehension](https://www.youtube.com/watch?v=3dt4OGnU5sM&list=PLaL2yxczKLcDWDRB0ZrxsuKlupJU0Njje&index=5)

### List Comprehension

### Basic

```
""" list comprehensions : squaring numbers """
nums = [1,2,3,4,5,6,7,8,9,10]
squared_numbers = [n*n for n in nums]
print squared_numbers // prints [1,4,9,16,25,37,49,64,81,100]
```

### Conditional

Here you can add a condition to the list comprehension

```
""" list comprehension : even numbers """
nums = [1,2,3,4,5,6,7,8,9,10]
even_numbers = [n for n in nums if n%2 == 0]
print even_numbers // prints [2,4,6,8,10]
```

### Nested

Suppose we want a (letter, num) pair for each letter in 'abcd' and each number in '0123'

```
""" list comprehension : nested """
my_list = [(letter, num) for letter in 'abcd' for num in range(4)]
print my_list // prints [('a',0), ... , ('a',3), ('b', 0), ... , ('d',3)]
```

### Dictionary Comprehension

Suppose we want a dictionary `dict{'name' : 'hero'} for each (name, hero) pair. This is how we can use comprehension on the dictionary.

```
""" dictionary : comprehension """
names = ['Bruce', 'Wade', 'Clark']
heros = ['Batman', 'Deadpool', 'Superman']
my_dict = {name: hero} for name, hero in zip (names, heros)}
```

### Set Comprehension

We can demonstrate a similar behaviour with a set, where we will not keep duplicate values

```
""" set comprehension """
nums = [1,1,2,1,3,4,5,5,6,7,8,7,9,9]
my_set = {n for n in nums} // simply creates a set from nums
print my_set // prints set([1,2,3,4,5,6,7,8,9])
```

### Generator Comprehension

Suppose we want to yield `n*n` for each `n` in a list `nums`

```
""" generator comprehension """
nums = [1,2,3,4,5,6,7,8,9,10]
def gen_func(nums):
    for n in nums:
        yield n*n

my_gen = gen_func(nums)

my_gen_comprehension = (n*n for n in nums)

for i in my_gen:
    print i

for i in my_gen_comprehension:
    print i // this gives the same result as above.
```

## Sorting Lists, Tuples and Objects

[YouTube: Intermediate Python - Sorting Lists, Tuples and Objects](https://www.youtube.com/watch?v=D3JvDWO-BY4&index=6&list=PLaL2yxczKLcDWDRB0ZrxsuKlupJU0Njje)

### Sorting a List

### Ascending Sort

Here, we look at the method `sorted()` that can be used on any iterable, as opposed to `li.sort()` which can only be used on a list.

```
""" sort list """
li = [9,1,8,2,7,3,6,4,5]
s_li = sorted(li) // This returns the sorted list that is input.
li.sort() // this will sort the original object in place and returns None
```

### Descending Sort

```
""" sort list : descending """
rev_li = sorted(li, reverse=True) // Sort in decending order
li.sort(reverse=True)
```

### Sort by Absolute Value

```
""" sort list : absolute value """
li = [-6,-5,-4,1,2,3]
s_li = sorted(li, key=abs) // this puts the values through tha abs function before sorting
print(s_li) // prints [1,2,3,-4,-5,-6]
```

### Sorting a Tuple

Here is an example of what `sorted` does on different iterables. For a dictionary, this would sort a dictionary by key.

```
""" sort tuple """
tup = (9,1,8,2,7,3,6,4,5)
s_tup = sorted(tup)
print(s_tup) // prints [1,2,3,4,5,6,7,8,9]
```

### Sorting a set of objects

If we consider an object, we can also sort these by a comparative element

```
""" sort objects """
class Employee():
    def __init__(self, name, age, salary):
        self.name = name
        self.age = age
        self.salary = salary

    def __repr__(self):
        return '({},{},${})'.format(self.name, self.age, self.salary)

e1 = Employee('Carl', 37, 70000)
e2 = Employee('Sarah', 29, 80000)
e3 = Employee('John', 43, 90000)

employees = [e1,e2,e3]

def e_sort(emp):
    return emp.name

s_employees_name = sorted(employees, key=e_sort)

print(s_emyployees) // prints [('Carl', 37, 70000),('John', 43, 90000),('Sarah', 29, 80000)]

s_employees_name = sorted(employees, key=lambda e: e.name) // this provides the same result as above using lambda.
```

### Using `attgetter` to Sort by Attribute

Alternatively, to specify a sorting function or use a lambda, we can import a utility called `attrgetter` that provides the correct attribute.

```
""" sort objects : using attrgetter """
from operator import attrgetter
s_employees_name = sorted(employees, key=attrgetter('age')) // this will sort by age for example
```

## Formatting

[YouTube: Intermediate Python - String Formatting](https://www.youtube.com/watch?v=vTX3IwquFkc&index=7&list=PLaL2yxczKLcDWDRB0ZrxsuKlupJU0Njje)[String formatting syntax](https://pyformat.info/)

### Strings

### Regular Placeholders

Formatting is a good way of avoiding having to simply concatenate strings with string formatting

```
""" string formatting : placeholders """
person = {'name': 'Jenn', 'age':23}
sentence = 'My name is {} and I am {} years old.'.format(person['name'], person['age'])
print(sentence) // prints 'My name is Jenn and I am 23 years old.'
```

### Numbered Placeholders

We can also use numbers to index the placeholders when formatting. This is especially useful if we have a repeated value we want to concatenate.

```
""" string formatting : numbered placeholders """
tag = 'h1'
text = 'This is a headline'
sentence = '<{0}>{1}<{0}>'.format(tag, text)
print(sentence) // prints '<h1>This is a headline<h1>'
```

### Dictionary Key Placeholders

We can also specify the key that we want to obtain from the dictionary as a placeholder

```
""" string formatting : dictionary key placeholders """
person = {'name': 'Jenn', 'age':23}
sentence = 'My name is {0[name]} and I am {0[age]} years old.'.format(person)
print(sentence) // prints 'My name is Jenn and I am 23 years old.'
```

### Object Placeholders

If we have instances of an object, we can access the member variables

```
""" string formatting : object placeholders """
class Person():
    def __init__(self, name, age):
        self.name = name
        self.age = age

p1 = Person('Jack', '33')

sentence = 'My name is {0.name} and I am {0.age} years old.'.format(p1)
print(sentence) // prints 'My name is Jack and I am 33 years old.'
```

### Keyword Placeholders

If you want to make an adhoc construction of placeholders, instead of indexing the placeholders with integers, we can do so with keywords.

``` python
""" string formatting : keyword placeholders """
sentence = 'My name is {name} and I am {age} years old.'.format(name='Jenn', age='30')
print(sentence) // 'My name is Jenn and I am 30 years old.'
```

### Unpacking Dictionaries / Lists While Formatting

We can use unpacking in order to replace `name = 'Jenn', age = '30'`. This is often the **cleanest** way of printing a dictionary.

``` python
""" string formatting : unpacking dictionary """
person = {'name': 'Jenn', 'age':23}
sentence = 'My name is {name} and I am {age} years old.'.format(**person)
print(sentence) // My name is Jenn and I am 23 years old.'
```

### Numbers

### Padding

``` python
""" number formatting : padding """
for i in range(1,11):
    sentence = 'The value is {:02}'.format(i)
    print(sentence) // prints 'The value is 01, The value is 02, etc.'
```

### Decimal Places

``` python
""" number formatting : decimal places """
pi = 3.14159265
sentence = 'Pi is equal to {:.3f}'.format(pi)
print(sentence) // prints Pi is equal to 3.142 (rounding up from 5)
```

### Comma Separator for Large Values

``` python
""" number formatting : comma separation """
sentence = '1 MB is equal to {:,} bytes'.format(1000**2)
print(sentence) // prints '1 MB is equal to 1,000,000'
```

<span class="success-msg">**Tip:** We can combine this with decimal places like `{:,.2f}` if we want</span>

### Dates

[Syntax for Formatting datetime in Python 3](https://docs.python.org/3/library/datetime.html#strftime-and-strptime-behavior)

``` python
""" formatting dates """
import datetime
my_date = datetime.datetime(2018,04,19,16,34,56)
sentence = '{0:%B %d, %Y} fell on a {0:%A} and was the {0:%j} day of the year'.format(my_date)
print(sentence) // prints 'April 19, 2018 fell on a Thursday and was the XXX day of the year.
```

# Fluent Python

## Chapter 1

### Special Methods

The first thing to know about special methods is that they are meant to be called by the Python interpreter, and not by you. You don’t write my_object.__len__(). You write len(my_object) and, if my_object is an instance of a user-defined class, then Python calls the __len__ method you implemented.

### Collection API

![[Pasted image 20251229131419.png]]

Three very important specializations of Collection are:
- Sequence, formalizing the interface of built-ins like list and str
- Mapping, implemented by dict, collections.defaultdict, etc.
- Set, the interface of the set and frozenset built-in types

![[Pasted image 20251229131645.png]]

![[Pasted image 20251229131738.png]]

## Chapter 2

### Overview of Built-in Sequences

- Container Sequences
	- Can hold items of different types, including nested containers. Some examples:
`list`, `tuple`, and `collections.deque`.
	- Holds references to the object it contains (of any type)
- Flat Sequences
	- Hold items of one simple type. Some examples: `str`, `bytes`, and `array.array.`
	- Stores the value in it's own memory space

### Grouping by mutability

- Mutable Sequences
	- list
	- bytearray
	- array.array
	- collections.deque
- Immutable Sequences
	- tuple
	- str
	- bytes

![[Pasted image 20251229133248.png]]

### Generator Expressions

A genexp (generator expression) saves memory because it yields items one by one using the iterator protocol instead of building a whole list just to feed another constructor.

### Tuples as Immutable Lists

What benefits might there be to tuples being immutable lists

- Clarity: When you see a tuple in code, you know its length will never change.
- Performance: A tuple uses less memory than a list of the same length, and it allows Python
to do some optimizations.

Be aware that the immutability of a tuple only applies to the references contained in it. References in a tuple cannot be deleted or replaced. But if one of those references points to a mutable object, and that object is changed, then the value of the tuple changes.

https://stackoverflow.com/questions/68630/are-tuples-more-efficient-than-lists-in-python/22140115#22140115

### Match Sequences

- [ ] Research match sequences more

### Slices

- `s[a:b:c]` can be used to specify a stride or step `c`, causing the resulting slice to skip items.

### Memory View

- The built-in `memoryview` class is a shared-memory sequence type that lets you handle slices of arrays without copying bytes.

## Dequeues and Other Queues

- The .append and .pop methods make a list usable as a stack or a queue (if you use .append and .pop(0), you get FIFO behavior). But inserting and removing from the head of a list (the 0-index end) is costly because the entire list must be shifted in memory.

- [ ] Research thread-safe
- [ ] https://www.youtube.com/watch?v=kQvFMrSvG4c

## Chapter 5

### Data Classes

There are a few different ways of expressing data classes

- `collections.namedtuple`
- `typing.NamedTuple` - An alternative that requires type hints on the fields
- `@dataclasses.dataclass` - A class decorator that allows even more customisation

There difference between the namedtuple and NamedTuple class builders with the `@dataclass` option is that the former two build `tuple` subclasses so they're immutable while the latter is mutable.

A common bug is to use a mutable instance as a field default without using a default_factory constructor. The impact of this is that all instances might share the same default value, which is rarely what you want.

- [ ] Answer some Advent of Code / HackerRank / Leetcode questions using dataclasses

## Chapter 6

### Identity, Equality, and Aliases

A response from `id()` is guaranteed to be a unique integer label, and it will never change during the life of the object.

== compares the values of objects (the data they hold) while `is` compares their identities

Principle of least astonishment = A core design principle that says that a "System's components should behave in aways user expect, minimising confusion, frustration, and unexpected results"

### Garbage Collection

The primary algorithm for garbage collection in Python is "Reference Counting"

## Chapter 19

This chapter is about how to make Python deal with “lots of things at once.” This may involve concurrent or parallel programming—even academics who are keen on jargon disagree on how to use those terms. I will adopt Rob Pike’s informal defini‐ tions in this chapter’s epigraph, but note that I’ve found papers and books that claim to be about parallel computing but are mostly about concurrency.2
Parallelism is a special case of concurrency, in Pike’s view. All parallel systems are concurrent, but not all concurrent systems are parallel. In the early 2000s we used single-core machines that handled 100 processes concurrently on GNU Linux. A modern laptop with 4 CPU cores is routinely running more than 200 processes at any given time under normal, casual use. To execute 200 tasks in parallel, you’d need 200 cores.

Starting a process is not cheap, so often you want to amortize the startup cost by making each thread or process into a "worker".

- [ ] Is there a visual model for concurrency in Python
- [ ] Understand how disk I/O or network I/O might release the GIL and the implications or usecases of that
- [ ] Hyperthreading could be a relevant mix between processing and threads

### Loops, Sentinals, and Poison Pills

None is often used as a sentinel value, but it may be unsuitable if it can occur in the data stream. Calling object() is a common way to get a unique value to use as senti‐ nel. However, that does not work across processes because Python objects must be serialized for inter-process communication, and when you pickle.dump and pickle.load an instance of object, the unpickled instance is distinct from the origi‐ nal: it doesn’t compare equal. A good alternative to None is the Ellipsis built-in object (a.k.a. ...), which survives serialization without losing its identity.

### Python in the Multicore World

- CPUs were executing sequential code faster, year after year, but since 2004, that is no longer true. clock speeds and execution optimisation reached plateaus.

- [ ] Watch video about dask can be used in distributed computing usecase
- [ ] Designing data intensive applications books
- [ ] Understand WSGI and ASGI
- [ ] Understand the implications of removing the GIL in future versions of Python
- [ ] Read Web Service Efficiency with Python by Min Ni
- [ ] Distributed computation patters written by Unmesh Joshi on Martin Fowlers blog
