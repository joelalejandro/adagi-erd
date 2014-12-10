create table t_properties (
  property_id       bigint(10) primary key not null auto_increment,
  ref_code          varchar(100) not null,
  property_type_id  bigint(10) not null,
  date_created      datetime not null,
  owner_user_id     bigint(10) not null
)
auto_increment = 1
engine = innodb
charset = utf8;

alter table t_properties
  add constraint fk_pro_pro_typ
  foreign key (property_type_id)
  references t_property_types (property_type_id);

alter table t_properties
  add constraint fk_pro_use
  foreign key (owner_user_id)
  references t_users (user_id);

create unique index udx_pro_typ_use on t_properties (ref_code, owner_user_id);
