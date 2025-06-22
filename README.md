# datasets-sql-examples
Bu repo, Datasette projesindeki örnek veritabanı fixtures.db ile yapılan SQL sorgularını içerir.
İçerik
•	datasets/fixtures.db: Datasette’in sağladığı örnek SQLite veritabanı/n
•	queries/simple_select_statements.sql: SELECT sorguları örnekleri
Datasette ile Kullanım
pip install datasette
datasette install datasette
curl -O https://latest.datasette.io/fixtures.db7
datasette datasets/fixtures.db
