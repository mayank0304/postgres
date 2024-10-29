# Installation of PostgreSql

sudo dnf install postgresql-server postgresql-contrib

# The postgresql server is not running and disabled by default. To set it to start at boot, run:
sudo systemctl enable postgresql

# The database needs to be populated with initial data after installation. The database initialization could be done using following command. It creates the configuration files postgresql.conf and pg_hba.conf
sudo "postgresql-setup --initdb --unit postgresql"
# quotes because command was getting commented out

# To start the postgresql server manually, run
sudo systemctl start postgresql

# Te start postgres (superuser)
sudo -u postgres psql

# Creating new user
postgres=# CREATE USER example WITH PASSWORD 'example';

# creating database
postgres=# CREATE DATABASE my_project OWNER example;

# To use database
psql my_project example