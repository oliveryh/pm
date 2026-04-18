# Log Processing

- [angle-grinder (rcoh) (2.3k ★)](https://github.com/rcoh/angle-grinder) - Slice and dice logs on the command line
- [grok (jordansissel) (230 ★)](https://github.com/jordansissel/grok) - DRY and RAD for regular expressions and then some.
- https://lnav.org/

# Django SQL Logging

Add the following to `settings.py` to log SQL queries in the dev environment:

```py
LOGGING = {
    'version': 1,
    'filters': {
        'require_debug_true': {
            '()': 'django.utils.log.RequireDebugTrue',
        }
    },
    'handlers': {
        'console': {
            'level': 'DEBUG',
            'filters': ['require_debug_true'],
            'class': 'logging.StreamHandler',
        }
    },
    'loggers': {
        'django.db.backends': {
            'level': 'DEBUG',
            'handlers': ['console'],
        }
    }
}
```

> If you're wanting to print out SQL while running a test, add this wrapper to the top of the function `@override_settings(DEBUG=True)`

## Capture Queries in Tests

```python
with CaptureQueriesContext(connection) as ctx:
    do_something()
    print(ctx.captured_queries)
```
