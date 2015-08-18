CREATE DATABASE restfulimprovgroups;

\c restfulimprovgroups

CREATE TABLE improv_groups (id SERIAL PRIMARY KEY, groupname VARCHAR(255), founded INTEGER, members VARCHAR(255), homeclub VARCHAR(255), recurringshow VARCHAR(255));
