create table t_users (
  user_id       bigint(10) primary key not null auto_increment,
  username      varchar(255) not null,
  passphrase    varchar(255) not null,
  salt          varchar(255) not null,
  date_created  datetime not null,
  status        enum('PV', 'A', 'B', 'C') not null default 'PV',
  human_id      bigint(10) not null
)
auto_increment = 1
engine = innodb
charset = utf8;

alter table t_users
  add constraint fk_use_hum
  foreign key (human_id)
  references t_humans (human_id);

create unique index udx_use_nam on t_users (username);
