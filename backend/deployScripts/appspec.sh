version: 0.0
os: linux
files:
  - source: /
    destination: /home/ubuntu/store-1-production
    overwrite: yes
permissions:
  - object: /home/ubuntu/store-1-production
    owner: ubuntu
    group: ubuntu
    mode: 755
hooks:
  AfterInstall:
    - location: deployScripts/test.sh
      timeout: 180
      runas: ubuntu
