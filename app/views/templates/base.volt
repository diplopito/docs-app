<!doctype html>
<!--[if IE 8]>
<html lang="{{ language }}" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]>
<html lang="{{ language }}" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="{{ language }}" class="no-js">
<!--<![endif]-->
<head>
    {%- set name = config.get('app').get('name', 'Phalcon Documentation') -%}
    {%- set description = config.get('app').get('description', 'Official Phalcon Documentation') -%}
    {%- set website_url = config.get('app').get('url', url()) -%}

    {%- include "include/meta.volt" with ['name': name, 'description': description] -%}
    {%- include "include/icons.volt" with ['website_url': website_url] -%}
    {%- include "include/analytics.volt" -%}

    {%- block head -%}
        {{- assets.outputCss('header_css') -}}
    {%- endblock -%}

    <title>
        {%- block title -%}{%- endblock -%}{{ ' - ' ~ description }}
    </title>
</head>

<body class="with-top-navbar">
    {%- block nav -%}
        {%- include 'include/nav.volt' -%}
    {%- endblock -%}
    <div class="container-fluid article-page-wrap">
        <div class="row">
            <div class="col-md-2 sidebar hidden-xs">
                {%- block sidebar -%}{%- endblock -%}
            </div>
            <div class="m-t-md m-b-lg" id="articles">
                <div class="article-content">
                    {%- block content -%}{%- endblock -%}
                </div>
            </div>
        </div>
        {%- block footer -%}
            {%- include "include/footer.volt" -%}
        {%- endblock -%}
    </div>

    {{- assets.outputJs('footer_js') -}}

    <script type="application/javascript">hljs.initHighlightingOnLoad();</script>
</body>
</html>
