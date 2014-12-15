create table t_user_grants (
  user_grant_id bigint(10) primary key not null auto_increment,
  user_id      bigint(10) not null,
  grant_id      bigint(10) not null
)
auto_increment = 1
engine = innodb
charset = utf8;

create unique index udx_user_grants on t_user_grants (user_id, grant_id);

alter table t_user_grants
  add constraint fk_use_rol_use
  foreign key (user_id)
  references t_users (user_id);

alter table t_user_grants
  add constraint fk_use_rol_rol
  foreign key (grant_id)
  references t_grants (grant_id);
