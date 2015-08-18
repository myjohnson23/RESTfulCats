CREATE DATABASE tvshows;

\c tvshows

CREATE TABLE tv_shows (id SERIAL PRIMARY KEY, title VARCHAR(255), start_year VARCHAR(255), end_year VARCHAR(255), characters VARCHAR(255), plot VARCHAR(255), original_network VARCHAR(255));
