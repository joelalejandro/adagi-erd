create table t_property_types (
  property_type_id  bigint(10) primary key not null auto_increment,
  name              varchar(100) not null
  date_created      datetime null,
  owner_user_id     bigint(10) null
)
auto_increment = 1
engine = innodb
charset = utf8;

alter table t_property_types
  add constraint fk_pro_typ_use
  foreign key (owner_user_id)
  references t_users (user_id);
