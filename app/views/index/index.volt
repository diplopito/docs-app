{%- extends "templates/index.volt" -%}

{%- block meta -%}
    {%- include "include/meta.volt" with [
        'name': name,
        'description': description,
        'keywords': keywords,
        'description_long': description_long,
        'app_version': app_version
    ] -%}
{%- endblock -%}
