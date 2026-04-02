# PostGIS Performance Showdown: Geometry vs. Geography

![rw-book-cover](https://readwise-assets.s3.amazonaws.com/media/uploaded_book_covers/profile_600018/0oLBxKYQ3hGg8kMP0_P9iBzXH)

## Metadata

- Author: [[Jacob Baskin]]
- Full Title: PostGIS Performance Showdown: Geometry vs. Geography
- Category: #articles
- Summary: At Coord, we use PostgreSQL as our primary data store, and we take advantage of the wonderful PostGIS extension to store geospatial data…
- URL: https://medium.com/coord/postgis-performance-showdown-geometry-vs-geography-ec99967da4f0

## Full Document

[[Full Document Contents/Articles/PostGIS Performance Showdown Geometry vs. Geography.md|See full document content →]]

## Highlights

- PostGIS gives you a choice of two different ways to store geospatial data:
  • [Geometry](https://postgis.net/docs/manual-2.4/using_postgis_dbmanagement.html#RefObject), where it assumes all of your data lives on a Cartesian plane (like a [map projection](https://medium.com/coord/where-in-the-world-are-you-really-5e109ae4183f));
  • [Geography](https://postgis.net/docs/manual-2.4/using_postgis_dbmanagement.html#PostGIS_Geography), where it assumes that your data is made up of points on the earth’s surface, as specified by latitudes and longitudes.
  Geography types will give you more accurate results, especially over long distances, but geometry types have better performance. ([View Highlight](https://read.readwise.io/read/01hdzx0wy34h97nacr75jafsr6))
