
sudo su postgres
psql
create  user john with password  'mysql'  ;
ALTER USER john WITH SUPERUSER ;
CREATE DATABASE  johndb ;
psql -U john -d johndb -h localhost -p 5432




