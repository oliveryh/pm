*Exploring the ways to display numerical values in the terminal*

While working with Linux and monitoring or seeing change over time, it can be useful to show this in a visual format, even when plotting libraries aren't available.

# Python ASCIIChart Plotting

https://gist.github.com/oliveryh/65161ccf70c2bfb9667d691d2c3795d6

[![asciicast](https://asciinema.org/a/Xs7CQD1jndy2D0GKj2BY9D2sj.svg)](https://asciinema.org/a/Xs7CQD1jndy2D0GKj2BY9D2sj)

The following python snippet allows you to plot any numerical stream as a chart so you can monitor it.

The following example outputs the wifi strength every 0.1 seconds
`while true; do echo $(iwconfig 2>/dev/null | grep -o "Signal level=-[0-9]*" | grep -o "[0-9]*"); sleep 0.1; done | ./plot.py`

# Further Reading

- [plotext - PyPI](https://pypi.org/project/plotext/)
- [dkogan/feedgnuplot](https://github.com/dkogan/feedgnuplot/)
- [TurkeyMcMac - barchart](https://github.com/TurkeyMcMac/barchart)
