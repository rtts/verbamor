server {
  server_name www.verbamor.com;
  rewrite ^(.*) http://verbamor.com$1 permanent;
}

server {
  server_name verbamor.com;
  root /home/www/verbamor;
}
