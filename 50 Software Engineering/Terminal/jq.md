# Tips

## Decoding JWT from the Command Line

[source](https://prefetch.net/blog/2020/07/14/decoding-json-web-tokens-jwts-from-the-linux-command-line/)

`pbpaste | jq -R 'split(".") | .[0],.[1] | @base64d | fromjson'`

# Resources

- [Learn jq the Hard Way, Part I: JSON](https://blog.container-solutions.com/learn-jq-the-hard-way-part-i-json)
