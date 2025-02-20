$NetBSD$

Use portable shell syntax.

--- support-files/mysql.server.sh.orig	2022-02-07 19:58:30.000000000 +0000
+++ support-files/mysql.server.sh
@@ -394,9 +394,9 @@ case "$mode" in
       # may be overwritten at next upgrade.
       $bindir/mysqld_safe --datadir="$datadir" --pid-file="$mysqld_pid_file_path" $other_args >/dev/null &
       wait_for_pid created "$!" "$mysqld_pid_file_path"; return_value=$?
-      if [ $return_value == 1 ];then 
+      if [ $return_value = 1 ];then 
           log_failure_msg "MySQL (Percona XtraDB Cluster) server startup failed!"
-      elif [ $return_value == 2 ];then
+      elif [ $return_value = 2 ];then
           log_failure_msg "MySQL (Percona XtraDB Cluster) server startup failed! State transfer still in progress"
       fi
 
