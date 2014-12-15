create table t_user_roles (
  user_role_id bigint(10) primary key not null auto_increment,
  user_id      bigint(10) not null,
  role_id      bigint(10) not null
)
auto_increment = 1
engine = innodb
charset = utf8;

create unique index udx_user_roles on t_user_roles (user_id, role_id);

alter table t_user_roles
  add constraint fk_use_rol_use
  foreign key (user_id)
  references t_users (user_id);

alter table t_user_roles
  add constraint fk_use_rol_rol
  foreign key (role_id)
  references t_roles (role_id);
