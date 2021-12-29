plan apache::remove(){
  run_task('apache::ctl','centos.mylabserver.com',"Shut down Apache service", {'command' => 'graceful-stop'})
  run_command("cp /etc/httpd/logs/access_log /tmp/apache_access", 'centos.mylabserver.com', "Copy the Apache access logs")
  run_task('package', 'centos.mylabserver.com', "Remove Apache", {'action' => 'uninstall', 'name' => 'httpd'})
