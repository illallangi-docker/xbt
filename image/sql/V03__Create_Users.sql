create table if not exists xbt_users (
uid int not null auto_increment,
can_leech tinyint not null default 1,
wait_time int not null default 0,
peers_limit int not null default 0,
torrents_limit int not null default 0,
torrent_pass char(32) not null,
torrent_pass_version int not null default 0,
downloaded bigint unsigned not null default 0,
uploaded bigint unsigned not null default 0,
primary key (uid)
);