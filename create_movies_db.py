import sqlite3
# Warning: This file is created in the current directory
conn = sqlite3.connect('movies.db')
conn.execute(
    "CREATE TABLE movies (id INTEGER PRIMARY KEY, name char(100) NOT NULL, director char(100) NOT NULL)")
conn.execute("INSERT INTO movies (name,director) VALUES ('bahubali','rajamouli')")
conn.execute("INSERT INTO movies (name,director) VALUES ('robo', 'shankar')")
conn.execute(
    "INSERT INTO movies (name,director) VALUES ('avatar','james cameron')")
conn.execute(
    "INSERT INTO movies (name,director) VALUES ('iron man','jon favreau')")
conn.commit()
