{% if grains['id'] == 'web-prod' %}
env: production
web_message: "Welcome to the PRODUCTION environment"
{% else %}
env: dev
web_message: "Welcome to the DEV environment"
{% endif %}

