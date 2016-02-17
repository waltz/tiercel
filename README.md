# Seedbox

I have a little Raspberry Pi that I use to seed torrents. This repo has my
Ansible playbook that describes the configuration on that machine.

## Usage

To use this playbook, copy the `hosts.example` file to `hosts` in this project's
directory. Then add in the hostname of your Raspberry Pi. Once you've done that
you can run these playbooks like so:

    ansible-playbook -i hosts site.yml