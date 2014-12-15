create table t_roles (
  role_id     bigint(10) primary key not null auto_increment,
  role_name   varchar(100) not null
)
auto_increment = 1
engine = innodb
charset = utf8;

create unique index udx_roles on t_roles (role_name);
