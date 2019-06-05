{%- import_yaml "wg.yaml" as wg %}

{%- set community_repo = '/'.join(opts['file_root'].split('/')[:-1]) %}

{% for group, settings in wg.workgroups.items() %}
add_{{ group }}_README:
  file.managed:
    - name: {{ community_repo }}/proposed-wg/wg-{{ group }}/README.md
    - source: salt://README.md
    - makedirs: True
    - template: jinja
    - context:
        group: {{ group }}
        settings: {{ settings |json }}
{%- endfor %}
