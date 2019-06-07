{%- import_yaml "work_group_raw_data.yaml" as wg %}

{%- set community_repo = '/'.join(opts['file_root'].split('/')[:-1]) %}

{% for group, info in wg.workgroups.items() %}
add_{{ group }}_README:
  file.managed:
    - name: {{ community_repo }}/work_groups/wg-{{ group }}/README.md
    - source: salt://group_template.sls
    - makedirs: True
    - template: jinja
    - context:
        group: {{ group }}
        info: {{ info }}
        contributors: {{ wg.contributors }}
{%- endfor %}

add_home_page_README:
  file.managed:
    - name: {{ community_repo }}/README.md
    - source: salt://home_page_template.sls
    - makedirs: True
    - template: jinja
    - context:
        contributors: {{ wg.contributors}}
        homepage: {{ wg.homepage}}
        workgroups: {{ wg.workgroups }}
