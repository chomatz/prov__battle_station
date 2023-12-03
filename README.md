# prov__battlestation
automates system provisioning from scratch

# requirements
# variables
# dependencies
# examples
```
---

- name: usage example
  hosts: target_hosts

  tasks:

    tasks:

    - name: deploy baseline configuration
      include_role:
        name: prov__battle_station
        tasks_from: baseline.yml

    - name: deploy gnome desktop
      include_role:
        name: prov__battle_station
        tasks_from: gnome.yml

...
```
