# Efficient Use of PostgreSQL Indexes

![rw-book-cover](https://www.herokucdn.com/images/og.png)

## Metadata

- Author: [[heroku.com]]
- Full Title: Efficient Use of PostgreSQL Indexes
- Category: #articles
- Summary: An overview of the types of indexes available in PostgreSQL, and the different ways of using and maintaining the most common index type: B-Trees.
- URL: https://devcenter.heroku.com/articles/postgresql-indexes

## Full Document

[[Full Document Contents/Articles/Efficient Use of PostgreSQL Indexes.md|See full document content →]]

## Highlights

- Expression indexes are useful for queries that match on some function or modification of your data. Postgres allows you to index the result of that function so that searches become as efficient as searching by raw data values. For example, you can require users to store their email addresses for signing in, but you want case insensitive authentication. In that case, it’s possible to store the email address as is, but do searches on `WHERE lower(email) = '<lowercased-email>'`. The only way to use an index in such a query is with an expression index like so:
  CREATE INDEX users_lower_email ON users(lower(email));
  Another common example is for finding rows for a given date, where we’ve stored timestamps in a datetime field but want to find them by a date casted value. An index like `CREATE INDEX articles_day ON articles ( date(published_at) )` can be used by a query containing `WHERE date(articles.published_at) = date('2011-03-07')`. ([View Highlight](https://read.readwise.io/read/01h6gjq4a82f8w2j9aghhw4nr0))
- Having that in mind, you can see how in some cases using an index doesn’t really make sense. An index must be selective enough to reduce the number of disk lookups for it to be worth it. For example, a primary key lookup with a large enough table makes good use of an index: instead of sequentially scanning the table matching the query conditions, Postgres is able to find the targeted rows in an index, and then fetch them from disk selectively. For very small tables, for example, a cities lookup table, an index can be undesirable, even if you search by city name. In that case, Postgres can decide to ignore the index in favor of a sequential scan. Postgres decides to perform a sequential scan on any query that hits a significant portion of a table. If you do have an index on that column, it’s a dead index that’s never used - and indexes aren’t free: they come at a cost in terms of storage and maintenance. ([View Highlight](https://read.readwise.io/read/01h6gk00ykrt4yk2fepns08ct8))
- When tuning a query and understanding what indexes make the most sense, be sure to use a database as similar as possible to what exists, or will exist in production. Whether an index is used or not depends on a number of factors, including the Postgres server configuration, the data in the table, the index, and the query. For instance, trying to make a query using an index on your development machine with a small subset of “test data” is frustrating: Postgres determines that the dataset is so small that it’s not worth the overhead of reading through the index and then fetching the data from disk. Random I/O is much slower than sequential, so the cost of a sequential scan is lower than that of the random I/O introduced by reading the index and selectively finding the data on disk. Performing index tuning must be done on production, or on a staging environment that is as close to production as possible. On the Heroku Postgres database platform it’s possible to copy your production database to a different environment [easily](https://devcenter.heroku.com/articles/heroku-postgres-import-export#export). ([View Highlight](https://read.readwise.io/read/01h6gk3b8jxkzwyrn7qr41nn78))
