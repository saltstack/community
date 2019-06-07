# {{ group }} Working Group

## Captain
[{{ info.captain }}]

## Participants
{%- for name in info.contributors %}
*[{{name}}]
{%- endfor %}

{% for name, info in contributors.items() %}
{{name}}: {{info.git_link}}
{%- endfor %}
