select object_name,machine,s.sid,s.serial#
from v$locked_object l,dba_objects o ,v$session s
where l.object_id=o.object_id and l.session_id=s.sid;
alter system kill session 'sid,serial#'
