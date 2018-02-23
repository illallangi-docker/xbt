create table if not exists xbt_files (
fid int not null auto_increment,
info_hash binary(20) not null,
leechers int not null default 0,
seeders int not null default 0,
completed int not null default 0,
flags int not null default 0,
mtime int not null,
ctime int not null,
primary key (fid),
unique key (info_hash)
);