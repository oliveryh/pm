# Resources

- [Mermaid Live Editor](https://mermaid-js.github.io/mermaid-live-editor)
- [Mermaid Documentation](https://mermaidjs.github.io/#/)
- [MermaidJS Zoom and Pan](https://jsfiddle.net/zu_min_com/2agy5ehm/26/)

# Generating Call Graphs from Django

Uses `pycallgraph2` and `graphviz` to generate Mermaid-compatible call graphs via Django middleware. See `obsidian-piclo/Keep/Generate mermaid call graphs from local flex.md` for the full middleware and graphviz output class implementation. The approach:

1. Add a `CallgraphMiddleware` that intercepts requests and wraps the view in a `PyCallGraph` context
2. Use a custom `GraphvizOutput` subclass that generates Mermaid `graph LR` syntax instead of dot format
3. Add `"middleware.CallgraphMiddleware"` to `MIDDLEWARE` in `settings.py`
