# Type Definitions

## Schema Definition Language

``` js
const schema = gql`
  type Query {
    me: User
    user(id: ID!): User
	users: [User!]
  }

  type User {
    username: String!
  }
`
```

- A `!` after a type defintion indicates that it is non-nullable
- We can pass the type of each argument such as `<argument>: <type>`
- Also we can provide the return type `User`
- We can specify in the schema a list of objects `[User!]` - Note that the list can be empty and therefore null

# Resolvers

``` js
const resolvers = {
  Query: {
    me: () => {
      return me
    },
    user: (parent, args) => {
      return users[args.id]
    },
    users: () => {
      return Object.values(users)
    },
  },
}
```

- `parent`: Returns the previously resolved field
- `args`: Parses in the arguments from the called query
- `context`: Inject dependencies from the outside world
- `info`: Internal information about the request

# Setting up Postgres and GraphQL

When setting up Postgres, remember to change the postgres default password using the following commands

``` bash
sudo -u postgres psql
\password
```

[Postgres `psql` cheat sheet](https://tomcam.github.io/postgres/)

# Further Reading

- [Fullstack React GraphQL TypeScript Tutorial - Ben Awad](https://www.youtube.com/watch?app=desktop&v=I6ypD7qv3Z8)
- https://www.robinwieruch.de/graphql-apollo-server-tutorial
