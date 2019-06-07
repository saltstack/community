# SaltStack Community
## Term {{ homepage.term }} Timeline
{%- for activity  in homepage.timeline %}
* {{ activity }}
{%- endfor %}

## Working Groups
{%- set community_repo = '/'.join(opts['file_root'].split('/')[:-1]) %}
{%- for group, info in workgroups.items() %}
* [{{ group }}](community/work_groups/wg-{{ group }}/README.md):[{{ info.captain }}]({{ contributors[info.captain]['git_link'] }})
{%- endfor %}