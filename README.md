# Ansible-Pi-omxplayer
Ansible Scripts for Raspberry Pi's to download and play videos via http source.

Uses omxplayer

<h2> Initial Configuration Steps </h2>
<ul>
<li>Download the latest raspbian lite image, (raspbian-jessie-lite)</li>
<li>clone the image to an SD Card for the pi</li>
<li> boot the pi, note the ip address </li>
<li> run the playbook pi-omxplayer with sudo privileges </li>
<code>ansible-playbook -skK -u pi pi.yml </code>
</ul>
<h2> pi.yml example</h2>
```yml
---
- hosts: pi
  roles:
    - pi-omxplayer
  vars:
    from_email: pi@jacobdevans.com
    to_email: boot-notifications@jacobdevans.com
    hall_id: 22c504a6071ab2c1c5d80faf9d828b8a
```

<h2> hosts example</h2>
```
[pi]
entrance
showroom

[entrance]
192.168.1.250  video_file=welcome.mp4

[showroom]
192.168.2.250  video_file=products.mp4

```
