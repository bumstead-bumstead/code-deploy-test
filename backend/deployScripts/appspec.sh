version: 0.0
os: linux
files:
  - source: /
    destination: /
    overwrite: yes

permissions:
  - object: /
    pattern: "**"
    owner: root
    group: root

hooks:
  ApplicationStart:
    - location: test.sh
      timeout: 60
      runas: root
