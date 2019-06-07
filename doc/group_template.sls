# {{ group }} Working Group

## Captain
[{{ info.captain }}]

## Participants:
{%- for name, info in contributors.items() %}
{{name}}: {{info.git_link}}

{%- endfor %}
