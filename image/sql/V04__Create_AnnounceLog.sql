create table if not exists xbt_announce_log (
id int not null auto_increment,
ipa int unsigned not null,
port int not null,
event int not null,
info_hash binary(20) not null,
peer_id binary(20) not null,
downloaded bigint unsigned not null,
left0 bigint unsigned not null,
uploaded bigint unsigned not null,
uid int not null,
mtime int not null,
primary key (id)
);