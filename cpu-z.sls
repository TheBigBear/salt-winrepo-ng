{% load_yaml as versions -%}
- '1.65'
- '1.66'
- '1.67'
- '1.68'
- '1.69'
- '1.70'
- '1.71.1'
- '1.72.1'
- '1.73'
- '1.74'
- '1.76'
- '1.77'
- '1.78'
- '1.79'
- '1.80'
- '1.81'
- '1.82'
- '1.83'
- '1.84'
- '1.85'
- '1.86'
- '1.94'
{% endload -%}

{% load_yaml as remove_only_versions -%}
- '1.75'
{% endload -%}

cpu-z:
{%- for version in versions %}
  '{{ version }}':
    full_name: CPUID CPU-Z {{ version }}
    installer: https://download.cpuid.com/cpu-z/cpu-z_{{ version }}-en.exe
    install_flags: /SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
    uninstaller: '%ProgramFiles%\CPUID\CPU-Z\unins000.exe'
    uninstall_flags: /SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
{% endfor -%}

{%- for version in remove_only_versions %}
  '{{ version }}':
    full_name: CPUID CPU-Z {{ version }}
    uninstaller: '%ProgramFiles%\CPUID\CPU-Z\unins000.exe'
    uninstall_flags: /SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
{% endfor -%}
