# BACK-UP DATABASE
mysqldump forum > db_forum.sql


# EXPORT TABLE FROM DATABAS
mysqldump forum auth_user > tabula.sql

# IMPORT TABLE
mysql forum < tabula.sql
