LOAD DATA LOCAL INFILE '/var/lib/flyway/sql/data/config.dat'
REPLACE INTO TABLE xbt_config
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(name, value);