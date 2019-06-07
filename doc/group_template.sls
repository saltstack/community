# {{ group }} Working Group

## Captain
[{{ info.captain }}]({{ contributors[info.captain]['git_link'] }})

## Participants
{%- for name in info.contributors %}
* [{{ name }}]({{ contributors[name]['git_link'] }})
{%- endfor %}

## Project Board
[Github Project]({{ info.project_board }})

## Contact
{%- for link_name in info.contacts %}
* [{{ link_name }}]({{ info.contacts[link_name] }})
{%- endfor %}
