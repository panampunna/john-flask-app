sudo apt install -y  python3-pip
sudo apt install postgresql-client-common  postgresql-14 -y
cp /home/john/Vimal/2023-ubuntu/DOCKER-folder/PostgreSQL/pgpass    ~/.pgpass
sudo chmod 600 ~/.pgpass
cat  /home/john/Vimal/2023-ubuntu/DOCKER-folder/PostgreSQL/2_create_users.sql
pip install -r requirements.txt




