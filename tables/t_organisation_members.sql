create table t_organisation_users (
  organisation_user_id    bigint(10) primary key not null,
  organisation_id           bigint(10) not null,
  user_id                   bigint(10) not null
)
auto_increment = 1
engine = innodb
charset = utf8;

alter table t_organisation_users
  add constraint fk_org_use_org
  foreign key (organisation_id)
  references t_organisations (organisation_id);

alter table t_organisation_users
  add constraint fk_org_use_use
  foreign key (user_id)
  references t_users (user_id);

create unique index udx_organisation_users for t_organisation_users (organisation_id, user_id);
