--tboard=BoardVO : Spring JPA(테이블 이름과 VO이름이 같아야 한다. 나중에는!)
create table tboard(   
   idx int not null auto_increment,
   title varchar(1000) not null,
   contents varchar(3000) not null,
   count int not null default 0,
   writer varchar(100) not null,
   indate datetime not null default now(),
   primary key(idx)   
);

delete from tboard where idx=5

select * from tboard;

insert into tboard(title, contents, writer)
values ('스프링게시판', '스프링게시판', '관리자');

insert into tboard(title, contents, writer)
values ('스프링게시판', '스프링게시판', '신명진');

insert into tboard(title, contents, writer)
values ('스프링게시판', '스프링게시판', '정세연');