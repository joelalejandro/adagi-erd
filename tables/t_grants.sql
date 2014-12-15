create table t_grants (
  grant_id   bigint(10) primary key not null auto_increment,
  grant_name varchar(100) not null
)
auto_increment = 1
engine = innodb
charset = utf8;

create unique index udx_grants on t_grants (grant_name);
