create table t_humans (
  human_id      bigint(10) primary key not null auto_increment,
  first_name    varchar(50) not null,
  last_name     varchar(50) not null,
  date_of_birth date null,
  country_id    bigint(10) null
)
auto_increment = 1
engine = innodb
charset = utf8;
