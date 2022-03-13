CREATE TABLE us_cacao_table (company VARCHAR(255) NOT NULL,
location VARCHAR(255)   NOT NULL,
cacao_rating DOUBLE(30)   NOT NULL,
bean_origin VARCHAR(255)   NOT NULL,
year BIGINT(255)   NOT NULL,
CONSTRAINT pk_year PRIMARY KEY (year));

CREATE TABLE us_disney_table (
    branch VARCHAR(255)   NOT NULL,
    rating BIGINT(30)   NOT NULL,
    location VARCHAR(30)   NOT NULL,
    year VARCHAR(30)   NOT NULL);

CREATE TABLE grammy_songs (artist varchar(255) NOT NULL,
grammy_award varchar(255)   NOT NULL,
grammy_year int   NOT NULL,
name_of_song varchar(255)   NOT NULL,
genre varchar(255)   NOT NULL);

CREATE TABLE us_disney_cacao_table as
SELECT * FROM us_disney_table a
INNER JOIN us_cacao_table e
ON a.year = cast(e.year as varchar(4));

WITH CTE AS(
   SELECT [branch], [rating], [location], [year], [company], [location], [cacao_rating], [bean_origin], [year]
       RN = ROW_NUMBER()OVER(PARTITION BY branch ORDER BY branch)
   FROM us_disney_cacao_table
);

DELETE FROM CTE WHERE RN > 1;