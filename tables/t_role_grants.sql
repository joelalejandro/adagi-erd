create table t_role_grants (
  role_grant_id  bigint(10) primary key not null auto_increment,
  role_id        bigint(10) not null,
  grant_id       bigint(10) not null
)
auto_increment = 1
engine = innodb
charset = utf8;

create unique index udx_role_grants on t_role_grants (role_id, grant_id);

alter table t_role_grants
  add constraint fk_rol_gra_rol
  foreign key (role_id)
  references t_roles (role_id);

alter table t_role_grants
  add constraint fk_rol_gra_gra
  foreign key (grant_id)
  references t_roles (grant_id);
