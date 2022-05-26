-- on windows, open SQL Shell (psql). we can use pgadmin, 
-- but the psql shell is faster.


-- list all available databases 
\l 


-- create database
CREATE DATABASE wellness;


-- connect to "Trackpath" database
\c Wellness


-- create tables
CREATE TABLE daily_activity(
	id VARCHAR(30),
	activity_date DATE,
	total_steps INTEGER,
	total_distance FLOAT,
	tracker_dist FLOAT,
	logged_active_dist FLOAT,
	very_active_dist FLOAT,
	moderate_active_dist FLOAT,
	lightly_active_dist FLOAT,
	sedentary_active_dist FLOAT,
	very_active_min INTEGER,
	fairly_active_min INTEGER,
	lightly_active_min INTEGER,
	sedentary_active_min INTEGER,
	calories INTEGER);

CREATE TABLE daily_calories(
	id VARCHAR(30),
	activity_date DATE,
	calories INTEGER);

CREATE TABLE daily_intensities(
	id VARCHAR(30),
	activity_date DATE,
	sedentary_active_min INTEGER,
	lightly_active_min INTEGER,
	fairly_active_min INTEGER,
	very_active_min INTEGER,
	sedentary_active_dist FLOAT,
	lightly_active_dist FLOAT,
	moderate_active_dist FLOAT,
	very_active_dist FLOAT);

CREATE TABLE daily_calories(
	id VARCHAR(30),
	activity_date DATE,
	total_steps INTEGER);

CREATE TABLE sleep_day(
	id VARCHAR(30),
	sleep_day DATE,
	total_sleep INTEGER,
	total_min_asleep INTEGER,
	total_time_inbed INTEGER);

CREATE TABLE weight_info(
	id VARCHAR(30),
	date TIMESTAMP,
	weight_kg FLOAT,
	weight_lb FLOAT,
	fat INTEGER,
	bmi FLOAT,
	manual_report BOOLEAN,
	log_id VARCHAR(30));


-- 