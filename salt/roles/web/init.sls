nginx_install:
  pkg.installed:
    - name: nginx

nginx_service:
  service.running:
    - name: nginx
    - enable: True

web_content:
  file.managed:
    - name: /var/www/html/index.html
    - contents: |
        <h1>Enterprise Web Server</h1>
        <p>Environment: {{ pillar['env'] }}</p>
        <p>Message: {{ pillar['web_message'] }}</p>

