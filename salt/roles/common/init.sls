common_packages:
  pkg.installed:
    - pkgs:
      - vim
      - curl
      - git

include:
  - roles.common.schedule
