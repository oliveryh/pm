# Contributions

In the calendar heatmap example, the line
`{"type": "filter", "expr": "datum.date < data('max')[0].max_date"}` is causing the dates at the end of the line to wrap back to the start incorrectly.

# References

- [Layering Rolling Averages over Raw Values | Vega-Lite](https://vega.github.io/vega-lite/examples/layer_line_rolling_mean_point_raw.html)
- [Window | Vega-Lite](https://vega.github.io/vega-lite/docs/window.html)