# Github Review Map

```
# Type queries into this side of the screen, and you will 
# see intelligent typeaheads aware of the current GraphQL type schema, 
# live syntax, and validation errors highlighted within the text.

# We'll get you started with a simple query showing your username!
query { 
  repository(owner:<Owner>, name:<Repo>) {
    pullRequests(last: 10, states:MERGED) {
      nodes {
        author {
          login
        }
        number
        mergedAt
        reviews(last: 10,states: [PENDING, APPROVED, CHANGES_REQUESTED]) {
          nodes {
            id
            author {
              login
            }
            state
          }
          totalCount
        }
      }
    }
  }
}
```

This could be run to generate a tabular format and then the following bits of information could be generated:
- Frequency of PRs

Perhaps a node graph which shows the percentage of reviews that a given person gets from someone and also the rate of success from that reviewer

Could do a word map from all the review comments

# Journey Spark Lines

Animate all my cycles to and from work at once

- [rainbow-roads (NathanBaulch) (206 ★)](https://github.com/NathanBaulch/rainbow-roads) - Animate your exercise maps!
- https://publibikes.tibaldo.ch

# Python Code AST Visualisation

## Resources

- [awesome-python-ast (gyermolenko) (49 ★)](https://github.com/gyermolenko/awesome-python-ast) - Python tools, libraries and resources about AST (as in Abstract Syntax Trees)
- [astpath (hchasestevens) (199 ★)](https://github.com/hchasestevens/astpath) - A command-line search utility for Python ASTs using XPath syntax.
- [Fixit (Instagram) (301 ★)](https://github.com/Instagram/Fixit) - Fixit is a Python Lint Framework based on LibCST.
- [Build a Call graph in python including modules and functions? - Stack Overflow](https://stackoverflow.com/questions/13963321/build-a-call-graph-in-python-including-modules-and-functions)
- https://django-extensions.readthedocs.io/en/latest/graph_models.html
- https://deepsource.io/blog/python-asts-by-building-your-own-linter/
- [Comby](https://comby.dev) (via) Describes itself as "Structural search and replace for any language". Lets you execute search and replace patterns that look a little bit like simplified regular expressions, but with some deep OCaml-powered magic that makes them aware of comment, string and nested parenthesis rules for different languages. This means you can use it to construct scripts that automate common refactoring or code upgrade tasks.
	- `comby "path(:[var])" urls.py -match-only -matcher .py -json-lines | jq -s "" | jq -r ".[].matches[].matched"`
- [codemod (facebookarchive) (4k ★)](https://github.com/facebookarchive/codemod) - Codemod is a tool/library to assist you with large-scale codebase refactors that can be partially automated but still require human oversight and occasional intervention. Codemod was developed at Facebook and released as open source.
- [pyan (Technologicat) (198 ★)](https://github.com/Technologicat/pyan) - Static call graph generator. The official Python 3 version. Development repo.
- [refactor (isidentical) (338 ★)](https://github.com/isidentical/refactor) - AST-based fragmental source code refactoring toolkit for Python
- [septum (pyjarrett) (337 ★)](https://github.com/pyjarrett/septum/) - Context-based code search tool
- [Sourcegraph - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=sourcegraph.sourcegraph)
- [Semgrep](https://semgrep.dev/)
- [astor (berkerpeksag) (659 ★)](https://github.com/berkerpeksag/astor/) - Python AST read/write
- [code2flow (scottrogowski) (2.5k ★)](https://github.com/scottrogowski/code2flow) - Pretty good call graphs for dynamic languages
- [py-tree-sitter (tree-sitter) (330 ★)](https://github.com/tree-sitter/py-tree-sitter) - Python bindings to the Tree-sitter parsing library
- https://petevilter.me/post/datalog-typechecking/
- [deprank (codemix) (678 ★)](https://github.com/codemix/deprank) - Use PageRank to find the most important files in your codebase.
- [ast-grep (ast-grep) (439 ★)](https://github.com/ast-grep/ast-grep) - ⚡A fast and easy tool for code searching, linting, rewriting at large scale. Written in Rust
- [Gus Hogg-Blake / Edita Release · GitLab](https://gitlab.com/gushogg-blake/edita-release) ([discussion](https://news.ycombinator.com/item?id=34424767))
- https://github.com/xnuinside/codegraph ([discussion](https://news.ycombinator.com/item?id=35603511))
- I was interested to see if you could sort dependencies in code using a DAG and some sort method from that. It looks like someone in the ruff community had the same idea: https://github.com/charliermarsh/ruff/issues/3946
- [Edita](https://edita.vercel.app/blog/approach/)
- [Topiary](https://topiary.tweag.io/)
- [Territory](https://territory.dev/)
- [cgrep (awgn) (702 ★)](https://github.com/awgn/cgrep) - Cgrep
- https://github.com/adamchainz/django-upgrade (May be able to contribute one day)

## Further Reading

- https://engineering.soroco.com/abstract-syntax-tree-for-patching-code-and-assessing-code-quality/
- [repo-visualizer (kevinslin) (3 ★)](https://github.com/kevinslin/repo-visualizer)
- [Ask HN: Visualizing software designs, especially of large systems (if at all)? | Hacker News](https://news.ycombinator.com/item?id=31569646)
- [emerge (glato) (193 ★)](https://github.com/glato/emerge) - emerge is a source code analysis tool and dependency visualizer that can be used to gather insights about source code structure, metrics, dependencies and complexity of software projects. After scanning the source code of a project it provides you an interactive web interface to explore and analyze your project by using graph structures.
- [Sourcetrail (CoatiSoftware) (12.7k ★)](https://github.com/CoatiSoftware/Sourcetrail) - Sourcetrail - free and open-source interactive source explorer
- [Static Analysis at Scale: An Instagram Story | by Benjamin Woodruff | Instagram Engineering](https://instagram-engineering.com/static-analysis-at-scale-an-instagram-story-8f498ab71a0c)
- [emerge (glato) (196 ★)](https://github.com/glato/emerge) - emerge is a source code analysis tool and dependency visualizer that can be used to gather insights about source code structure, metrics, dependencies and complexity of software projects. After scanning the source code of a project it provides you an interactive web interface to explore and analyze your project by using graph structures.
- https://github.com/CoatiSoftware/Sourcetrail
- https://blog.includesecurity.com/2021/01/custom-static-analysis-rules-showdown-brakeman-vs-semgrep/
- https://en.m.wikipedia.org/wiki/Symbolic_execution
- [flowistry (willcrichton) (1k ★)](https://github.com/willcrichton/flowistry) - Flowistry is an IDE plugin for Rust that helps you focus on relevant code. - Flowistry understands whether it's possible for one piece of code to affect another.

# Trello Dependency Chart

## Resources

- [Network Graph | What It Is and How to Create One in JavaScript HTML5](https://www.anychart.com/blog/2020/07/22/network-graph-javascript/)

## Inspiration

- [trello-dependencies-graph (g3org3) (0 ★)](https://github.com/g3org3/trello-dependencies-graph)
- [Treant.js - javascript library for drawing tree diagrams](https://fperucic.github.io/treant-js)
- [Modeling Languages - Latest news, tools and research reports](https://modeling-languages.com)
- https://chrome.google.com/webstore/detail/graph-dependency-for-trel/ppbndnpfbahiilhalfmbkfnhkaohjbdo
- [Ticket Dependency Graph](https://theodo.github.io/ticket-dependency-graph)
- [GitHub - DanielPopOut/graph-dependencies: Graph dependency extension for Trello, Asana and Jira](https://github.com/DanielPopOut/graph-dependencies)

# Trello Ticket Changes Gantt

## Resources

https://vega.github.io/editor/?#/url/vega-lite/N4KABGBEAkDODGALApgWwIaQFxUQFzwAdYsB6UgN2QHN0A6agSz0QFcAjOxge1IRQyUa6ALQAbZskoAWOgCtY3AHaQANOCgATZAgBOjQnh4qckAIJhYjVITHIw7dLrBIneMAHdmiMLvRLqZE0wTXQ8dDAACnQAawiAcX8CMABhRDcASjo1DUhQ8OwwUAgISAp0MVYdQoBtDWKSyHhuG38AT0LIFN1uWFgMJVSnZGRnACFWRjFtXVgckqhYcN08ABEw5EKAJgAGAEYAdjotgFZ1BchkJU11vE2cXb2ATjoADgBmc8bNVj8jZW2dBOry+pUIvWYxgAktdkAAPQp7UFQZqtJRtGHaBE4PYaAC+XwapVRhHanRSw1GYAA0lM7LNSBTdCNxpNpqMSGAACooMBjbjcGJgACiVF0bTAAFk6VclIwKmAAMqIbisaZgABKyHQmnmjSWblu9zAjyOp2Rl2uRu2+xeHwtPz+xkBwIt4Ks-yUmPhiItJPa3uxJvxhI0xJapPRnQAYmJuPpQkrwncwABVOVij0dC0GlbWh77E50d6fMNQK43DY255vUsXR1hZ04WRnMuQd2Q5SB7Z+iMB2FB94h+pt-1R0yx+OMROK5P2dOMTPMbNt3NrKsFnYHC0V-Mm221h2-RsAnFbN0Qz3dnG9tEYgeFIcQAkji5jjoTsyS1OpbhiOyBGAADyABmYAADLoB4eqlGue6PC8rptruG77jW9ptg2nqFDsxythcHZXg+N6jn26LXmA0jDhARIomRH5QKm4FQmAk4JpgObLOudzVnadaNChPEFuh-GlFhTZgDsF4etCxFgEipF3hRJzUUUimRgxkBsdOERmAAZJKaYZhyy4wYsXHwYWxaieWVqoQhh6Yce2HNkC0mdl6ckKW+9EUQAbKptFNPRnQAOqMEodzOAACk4QoABKMNQPiKkgApiGZkBwfZB5IRcgnGg5GH1s5Em4eabaEbJWK+up-Y1TgByBXV45QGYmhUJF8XamILCZdlQloTZlqVoNRXDeJp5gH57lEQ18m3hpFGvM1Pl3p0QF+AE9gpKqkUSvE3BikoqBXHg-UWTlex+XQBz4QJdljQexXfKVU3vHQOwgpVl7VT6JFrUtclPKtjTvjGcbsWAMJRUoJ5w2IRmLiZeArhcA2FfsRx5Q9o2YyJR5OlNWx4bNf1Bt5YO+V5Oyg+G62mKmKTRmAqzcB4kXs4MFI2KwcycYaV2vLd92lAVvGOSVRMmPJn3fQRv1dl5i31f98m4s+oaA2Spi7Ds0iasgYoVqkPR9AMIrXOzQRKmlYhOLAiAGBdgtPfrdDSOeyGPfjfGE-DiJFp7ZNK-NlP00DYdbHTdEM4xxmzMuwFgdpiZjKM1BLD0qCpGdVLRvGhsKsKBoprOrCaIw1QC3mOVbjuPsSy9YlvTLexewrMmh2r4ex5HPdPmAL40S1mlQikiopC7tdPddDd403E2t4+kuNFV3dBvLVNKV5VGa6+28aZ04+T9P3H49I8+WQTTnS4UotQOvnnzduo8UXse9D1rh861AJ9TzXc+1Ze4jWvkcEs-sXLTRDs-NWM0367xjsFOOkB-5n2vpfb2C9hKvylgHHAw0n7KRVuRRB+8R7a1aqgieADVyXVnh3XGYDIESQfu2RWsCgyYMofeMOn9h5qR4cfGh6C65bzFo3YS3DXp3xwPAzuHkKLDXfO-fh38I6-2oafQB19GESOwUNFhU0QFELknovuqsKZqIPhoqhaCdFiKvldEBk0ZaEI4e-EhvCe7WIoT-KhC4lyo2TqxSGOlRGzzYeLYSftb74MoqvMEHjlYILDipchgj-GaWVNwQghAIrUFzpFKkEwrBKB0LAKU6BaAAC8IqbAcbPXBTCrqxLwVAkmzdH7JLDl49+AUMlBXBqYbovR+j+DAHpX861GmYx2DdCBWDr5tJkfEvYH02GmN6aknuTVBmj06PyNolSpnxEYLoMQlSUiVHYJU0CRS8B+ERqnDidDXb4yDuY0BrSjFuKBOI7pXdOG1R4e-Fa+yhGmAAGoVCuPAeUv5-w0AaW8meF8nGzwBXkZezYYGeJ2RTEGEKsmdAAHJmChEBaKET0VLKukWL6vzERyzxSk0FZjabEtsZpQJKMJT3JecBJQEhyk0ptPXOls8pJxKge4oF+L2XzS2BrL+NiLFUK5H4VAp1-ym3ZtMo+szxXSvypI-c8ymVyNZUqvpZjo5cvVZpTV6BtXIF1aMjwBqyRGpxE8J4w1onmvkasqB6zrU91tUq+1Q8QAAF1VKQCMHgOwhQgp3DhOdUw0UOGVLCF69EDgJQAE1tS6EyiBZQeBFSMBqYVaRsEOBJpTaYUlrBUDsCpNwMCT9KkoHVHmlg9hYAuvsEYU6YAIouEQD0JQf5uBMHgAqeMMx+qNuYHYWKmhK4BHvhaLtIFYDIEzfuC0EhUDMHvjsTlqrSgYF0DEVNbZUaEGNJARwZaE0oCSvgS9JqoBeE0H1HEV6-2QHQKwPAEJa2dFJLqL47YdTbuoDaeDcLuBIcfRcBitFSggSrtMTo4NVBgDLKUZ9r7Z3noRmoEjCxSjoDhIwOYOAcONCba+3aMzSNsfXcgAukVq3QZxMGujUB2P8bwKFZA37j2QFnboDAGVkQXHY+BawF6cAnCvcpnjybkCbowwWHTpR7YdrEGp89x6tPXoWAI9G8Zj2sdw-h3UpgVEPmI9x0oy7RidHQAgCsBTIDcbxGWOzUAgyscgHht1rnzLvJo9xxNbQX2dAAI6sCSMwRsVBEuiayou5tmT8uaBaOgCKtRnj+uI7sXY8bRMElo3RsDjHmPFea+xzoJanBmRU7xiTgnjRzy82J-rlapMyc6PJxTvXdMbsQ0FozI3ovxgwLJkCs2TPoDM7GPmiBCggQqIekLYWLRwi2Jh5rMWCOmHFqd0ikNLsXGu3F9h8qPNNZUyl19y6IoVDy-lgCFYnuidG3pzo2agWbbm8gMwSg0pltMGuaHZHeObSrpFQoYncko6gPuw9x7djGcaFOM6nR9DJXOsTsS5zkDwCgWUUYRhCu46ym0dtf5Bu-pCzpgrsKQcXC2oEbAdRQeNFeMgCX-rWcgXgO8TQ7wnhqAAJAjdKCceXBw-JK9UKrsXpQP4HGQCBdgKu1dQFl+8PYwIZeaCeJ7PyMu6fsC2Ci-XUATiy6eCBV4wWxf1bo41pLigVi1BGyCT7dHtyR4WDNGPJQzjx4gJfJPYBPip62GAYnKqFgB4yd53QK6WNJZe50Vxs3kupdML96jvOQ+ye0AF64QXI+hefCAPEQA

# Life Timeline

- [Bret Victor, beast of burden](http://worrydream.com/#!/Bio)

# Test Switch Similarity

If you run all the tests in your codebase and then see which switches are commonly checked together, then you can create a map of switches that are likely to be inter-related
