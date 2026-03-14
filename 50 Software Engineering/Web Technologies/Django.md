# Modules

- Django Silk
- [Django Extensions](https://django-extensions.readthedocs.io/en/latest/index.html)

# Resources

- [Classy CBV - Django View Cheat Sheet](https://ccbv.co.uk/projects/Django/4.0/)
- [Django Views — The Right Way](https://spookylukey.github.io/django-views-the-right-way/index.html)
- [Customize Django Admin Interface – Appliku](https://appliku.com/post/customize-django-admin-interface#search-objects-in-django-admin)

# Architecture

- Adopts a "shared-nothing" component-based architecture

Basic structure of Django Applications.

- **URLs** - Process URL requests via a single function
- **View** - Combines the response from the model and the template to generate a http response
- **Models** - Define the structure of the underlying data and an interface to interact with that data (CRUD operations)
- **Templates**

# `override_settings` bug

```
@override_settings(FILES_LOCALE='it_IT')
class SomeTest(TestCase):
    """Tests for MapFileUploadMessage handling of Planned Asset override data."""

    @classmethod
    @override_settings(FILES_LOCALE='it_IT')
    def setUpClass(cls):
        """Updates upload_config with correct switch overrides"""
        super().setUpClass()

    def test_override(self):
        assert_that(settings.FILES_LOCALE).is_equal_to('it_IT')
```

# Notes

## Annotations

Noticed that applying a filter on an annotation can sometimes cause that calculation to be run twice