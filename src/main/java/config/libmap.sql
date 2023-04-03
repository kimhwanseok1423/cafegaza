drop  table libmap;

create table libmap(
mart varchar2(2000),
p_num varchar2(2000),
area varchar2(2000),
address varchar2(2000),
latitude varchar2(2000),
longitude varchar2(2000));



insert into libmap values('?„œ?š¸ ?„?„œê´?','02-2122-0300','?„œ?š¸','?„œ?š¸ ì¤‘êµ¬ ?„¸ì¢…ë¡œ 110','37.566134','126.977808');
insert into libmap values('ì§??˜œ?˜ ?ˆ²','031-711-8905','ê²½ê¸°','ê²½ê¸°?„ ?„±?‚¨?‹œ ë¶„ë‹¹êµ? ê¸ˆê³¡?™ 206','37.386396','127.101900');
commit;

select count(*) from libmap where area='?„œ?š¸';

delete from libbmap where p_num=2

select * from libmap





