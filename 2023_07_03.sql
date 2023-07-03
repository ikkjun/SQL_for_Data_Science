create table triangle(
sidea double,
sideb double,
sidec double as (sqrt(sidea * sidea + sideb * sideb))
);

insert into triangle (sidea, sideb) values(1,1), (3,4), (6,8);

select sidea
/*,sideb
,sidec
*/
from triangle;

select sidea # comment
,sideb -- comment
,sidec /* comment */
from triangle;