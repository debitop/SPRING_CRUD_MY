DROP TABLE if exists users;
DROP sequence if exists global_seq;

CREATE SEQUENCE global_seq
  start 100;

CREATE table users (
  id         integer      not null primary key default nextval('global_seq'),
  name       varchar(100) not null,
  age        INTEGER,
  isAdmin    boolean,
  createDate timestamp    not null
)