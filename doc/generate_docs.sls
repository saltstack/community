{%- import_yaml "work_group_raw_data.yaml" as wg %}

{%- set community_repo = '/'.join(opts['file_root'].split('/')[:-1]) %}

{% for group, info in wg.workgroups.items() %}
add_{{ group }}_README:
  file.managed:
    - name: {{ community_repo }}/proposed-wg/wg-{{ group }}/README.md
    - source: salt://group_template.sls
    - makedirs: True
    - template: jinja
    - context:
        group: {{ group }}
        info: {{ info }}
        contributors: {{ wg.contributors }}
{%- endfor %}
