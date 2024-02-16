# Ensure old version of SyntheticAgent is removed
include:
  - cpstrepo

remove_old_SyntheticAgent:
  pkg.removed:
    - name: SyntheticAgent

install SyntheticAgent version staging:
  pkg.installed:
      - name: SyntheticAgent
      - version: '1.15.2.11'
      - require:
        - pkg: remove_old_SyntheticAgent
