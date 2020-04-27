#!/bin/bash

echo 'Postgresql configuration...'

apt-get install -y postgresql-common postgresql postgresql-contrib libpq-dev

echo 'Change password for "postgres" role'
su postgres -c "psql -c \"ALTER USER postgres with password 'postgres'\" "
su postgres -c "psql -c \"CREATE USER eduson WITH PASSWORD 'eduson' CREATEDB\" "
su postgres -c "psql -c \"CREATE DATABASE eduson_development OWNER eduson\" "

echo 'Restart postgresql...'
service postgresql restart
