# Command-Line Tools Can Be 235x Faster Than Your Hadoop Cluster

![rw-book-cover](https://adamdrake.com/static/images/twitter-card.jpg)

## Metadata

- Author: [[Adam Drake]]
- Full Title: Command-Line Tools Can Be 235x Faster Than Your Hadoop Cluster
- Category: #articles
- Summary: Using command-line tools can be significantly faster than using a Hadoop cluster for data processing tasks. By creating a data pipeline with shell commands, all processing steps can be done in parallel, resulting in faster performance. Shell commands like grep and awk can be used to filter and process data efficiently. The author demonstrates this by comparing the speed of processing chess game data using Hadoop versus command-line tools. The command-line tools were able to process the same amount of data 235 times faster than the Hadoop implementation. The author suggests that for many data processing tasks, using simple shell commands and tools on a single machine can be more efficient and cost-effective than using complex distributed processing systems like Hadoop.
- URL: https://adamdrake.com/command-line-tools-can-be-235x-faster-than-your-hadoop-cluster.html

## Full Document

[[Full Document Contents/Articles/Command-Line Tools Can Be 235x Faster Than Your Hadoop Cluster.md|See full document content →]]

## Highlights

- Before starting the analysis pipeline, it is good to get a reference for how fast it could be and for this we can simply dump the data to `/dev/null`.
  cat *.pgn > /dev/null
  In this case, it takes about 13 seconds to go through the 3.46GB, which is about 272MB/sec. This would be a kind of upper-bound on how quickly data could be processed on this system due to IO constraints. ([View Highlight](https://read.readwise.io/read/01hnqnrzswzgy19vvngfckw30w))
- This problem of unused cores can be fixed with the wonderful `xargs` command, which will allow us to parallelize the `grep`. Since `xargs` expects input in a certain way, it is safer and easier to use `find` with the `-print0` argument in order to make sure that each file name being passed to `xargs` is null-terminated. ([View Highlight](https://read.readwise.io/read/01hnqny7m02mwa58yt2vjemb74))
- The `-F` for `grep` indicates that we are only matching on fixed strings and not doing any fancy regex, and can offer a small speedup, which I did not notice in my testing. ([View Highlight](https://read.readwise.io/read/01hnqnzsfrg7an3qxkbx6zr4tk))
