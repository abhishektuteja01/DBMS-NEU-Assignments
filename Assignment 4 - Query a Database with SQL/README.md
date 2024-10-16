# DBMS-NEU-Assignments
This repository is for Assignment 4 - Query a Database with SQL.

## How to Run:
1. Download the media files from the github repository into SQLite (cloud or desktop version).

2. Execute the SQL files according to their query names. i.e. Query1, Query2 and so on.

## Queries:

* Query 1: What are the last names and emails of all customer who made purchased in the store?

```
sqlite3 MediaDB.db < Query1.sql
```

* Query 2: What are the names of each album and the artist who created it?

```
sqlite3 MediaDB.db < Query2.sql
```

* Query 3:  What are the total number of unique customers for each state, ordered alphabetically by state?
```
sqlite3 MediaDB.db < Query3.sql
```

* Query 4:  Which states have more than 10 unique customers?

```
sqlite3 MediaDB.db < Query4.sql
```

* Query 5: What are the names of the artists who made an album containing the substring "symphony" in the album title?

```
sqlite3 MediaDB.db < Query5.sql
```

* Query 6: What are the names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists?

```
sqlite3 MediaDB.db < Query6.sql
```

* Query 7:  How many artists published at least 10 MPEG tracks?

```
sqlite3 MediaDB.db < Query7.sql
```

* Query 8:  What is the total length of each playlist in hours? List the playlist id and name of only those playlists that are longer than 2 hours, along with the length in hours rounded to two decimals.

```
sqlite3 MediaDB.db < Query8.sql
```

* Query 9:  Creative addition: Define a new meaningful query using at least three tables, and some window function. Explain clearly what your query achieves, and what the results mean

```
sqlite3 MediaDB.db < Query9.sql
```

