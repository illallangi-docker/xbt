create table if not exists xbt_files_users (
fid int not null,
uid int not null,
active tinyint not null,
announced int not null,
completed int not null,
downloaded bigint unsigned not null,
`left` bigint unsigned not null,
uploaded bigint unsigned not null,
mtime int not null,
unique key (fid, uid),
key (uid)
);