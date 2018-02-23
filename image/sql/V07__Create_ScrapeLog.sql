create table if not exists xbt_scrape_log (
id int not null auto_increment,
ipa int unsigned not null,
info_hash binary(20),
uid int not null,
mtime int not null,
primary key (id)
);