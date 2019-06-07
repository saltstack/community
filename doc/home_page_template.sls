# SaltStack Community
## Term {{ homepage.term }} Timeline
{%- for activity  in homepage.timeline %}
* {{ activity }}
{%- endfor %}

## Working Groups
{%- for group, info in workgroups.items() %}
{%- set group_link = '[' + group + '](https://github.com/saltstack/community/tree/master/work_groups/wg-' + group + ')' %}
{%- set captain_link =  '[' + info.captain + '](' + contributors[info.captain]['git_link'] + ')' %}
* {{ group_link }}: {{ captain_link }}
{%- endfor %}