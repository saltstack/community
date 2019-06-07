# {{ group }} Working Group

## Captain
[{{ info.captain }}]({{ contributors[info.captain]['git_link'] }})

## Participants
{%- for name in info.contributors %}
* [{{ name }}]({{ contributors[name]['git_link'] }})
{%- endfor %}
