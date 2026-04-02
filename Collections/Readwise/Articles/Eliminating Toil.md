# Eliminating Toil

![rw-book-cover](https://readwise-assets.s3.amazonaws.com/static/images/article2.74d541386bbf.png)

## Metadata

- Author: [[Vivek Rau
Edited by Betsy Beyer]]
- Full Title: Eliminating Toil
- Category: #articles
- Summary: Toil is not just "work I don’t like to do. " It’s also not simply equivalent to administrative chores or grungy work.
- URL: https://sre.google/sre-book/eliminating-toil/

## Full Document

[[Full Document Contents/Articles/Eliminating Toil.md|See full document content →]]

## Highlights

- the following descriptions, the more likely it is to be toil:
  Manual
  This includes work such as manually running a script that automates some task. Running a script may be quicker than manually executing each step in the script, but the *hands-on* time a human spends running that script (not the elapsed time) is still toil time.
  Repetitive
  If you’re performing a task for the first time ever, or even the second time, this work is not toil. Toil is work you do over and over. If you’re solving a novel problem or inventing a new solution, this work is not toil.
  Automatable
  If a machine could accomplish the task just as well as a human, or the need for the task could be designed away, that task is toil. If human judgment is essential for the task, there’s a good chance it’s not toil.[21](https://sre.google/sre-book/eliminating-toil/#id-EYJuMSqSwTgtKTk)
  Tactical
  Toil is interrupt-driven and reactive, rather than strategy-driven and proactive. Handling pager alerts is toil. We may never be able to eliminate this type of work completely, but we have to continually work toward minimizing it.
  No enduring value
  If your service remains in the same state after you have finished a task, the task was probably toil. If the task produced a permanent improvement in your service, it probably wasn’t toil, even if some amount of grunt work—such as digging into legacy code and configurations and straightening them out—was involved.
  O(n) with service growth
  If the work involved in a task scales up linearly with service size, traffic volume, or user count, that task is probably toil. An ideally managed and designed service can grow by at least one order of magnitude with zero additional work, other than some one-time efforts to add resources ([View Highlight](https://read.readwise.io/read/01gx32bxd3v4v178p53a5ysnb1))
- [19](https://sre.google/sre-book/eliminating-toil/#id-dA2uXtyF9Tk-marker)We use the Objectives and Key Results system, pioneered by Andy Grove at Intel; see [[Kla12]](https://sre.google/sre-book/bibliography#Kla12) ([View Highlight](https://read.readwise.io/read/01gx38qtxrzxvf1actnyd5r8z5))
- [20](https://sre.google/sre-book/eliminating-toil/#id-BWDu1hjFGTg-marker)Googlers record short free-form summaries, or "snippets," of what we’ve worked on each week. ([View Highlight](https://read.readwise.io/read/01gx38sywp3768bkt2f5m76s3j))
