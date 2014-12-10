create table t_organisations (
  organisation_id   bigint(10) primary key not null auto_increment,
  name              varchar(255) not null,
  legal_name        varchar(255) not null,
  date_created      datetime not null,
  owner_user_id     bigint(10) not null
)
auto_increment = 1
engine = innodb
charset = utf8;

alter table t_organisations
  add constraint fk_org_use
  foreign key (owner_user_id)
  references t_users (user_id);
