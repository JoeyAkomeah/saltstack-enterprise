db_package:
  pkg.installed:
    - name: mysql-server

db_service:
  service.running:
    - name: mysql
    - enable: True
