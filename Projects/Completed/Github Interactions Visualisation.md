# Introduction

A git repo tells you quite a lot about how a team operates. Who are the ones doing more reviews than code contributions, which people tend to work closely together. I've developed a bit of an obsession recently with asking questions like "What would it look like if I created a relationship network of code reviews" and my mind immediately exploding with how I might store it or what javascript library would be best to display it.

I'm settling on writing this blog post so I can ask that question and at least go through the whole process once before getting distracted by the latest shiny object on Hacker News.

So that's what I'll explore, what information can I collect about github PR reviews and what interesting ways might I display that?

# Collecting the Data

Github has a GraphQL API which appears to be closer

# Running Notes

`select COUNT(*), pr_author, review_author from reviews r LEFT JOIN pull_requests p ON r.pull_requests_id = p.id GROUP BY pr_author, review_author`

# Reference

- [How to consume the Github GraphQL API using Python? - Stack Overflow](https://stackoverflow.com/questions/45957784/how-to-consume-the-github-graphql-api-using-python)
- [More ways to construct a GraphQL query string in Python - Stack Overflow](https://stackoverflow.com/questions/62384215/best-way-to-construct-a-graphql-query-string-in-python)
- [sqlite-utils command-line tool - sqlite-utils](https://sqlite-utils.datasette.io/en/stable/cli.html#extracting-columns-into-a-separate-table)
- https://docs.github.com/en/graphql/overview/resource-limitations
- [D3.js Tips and Tricks: d3.js force directed graph examples (overview)](http://www.d3noob.org/2013/03/d3js-force-directed-graph-examples.html)
- [Mobile Patent Suits · GitHub](http://bl.ocks.org/mbostock/1153292)
- [return SQL table as JSON in python - Stack Overflow](https://stackoverflow.com/questions/3286525/return-sql-table-as-json-in-python)
- [Edit fiddle - JSFiddle - Code Playground](http://jsfiddle.net/doraeimo/JEcdS)/
- [svg - Get arrowheads to point at outer edge of node in D3 - Stack Overflow](https://stackoverflow.com/questions/16660193/get-arrowheads-to-point-at-outer-edge-of-node-in-d3)
- [Edit fiddle - JSFiddle - Code Playground](https://jsfiddle.net/6hustc0h/2)/
- [javascript - Align Marker on node edges D3 Force Layout - Stack Overflow](https://stackoverflow.com/questions/41226734/align-marker-on-node-edges-d3-force-layout/41229068#41229068)
- [GQL – Git Query Language | Hacker News](https://news.ycombinator.com/item?id=38498688)
