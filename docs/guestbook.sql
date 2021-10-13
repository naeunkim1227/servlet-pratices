-- guestbook
desc guestbook;

-- insert
insert into gueskbook values (null, '크롱', '1234', '크롱' , now() );

-- select
select no,name, date_format(reg_date, '%Y/%m/%d %H:%i:%s'), message 
from gueskbook 
order by reg_date desc;

select * from guestbook;

-- delete
delete from gueskbook where no = 2 and password = '1235';

delete from guestbook where no = 6;
