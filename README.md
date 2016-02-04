# Ansible-Pi-omxplayer
Ansible Scripts for Raspberry Pi's to download and play videos via http source.

Uses omxplayer

<h2> Initial Configuration Steps </h2>
<ul>
<li>Download the latest lite raspbian image (<a href="https://downloads.raspberrypi.org/raspbian_lite_latest">raspbian-jessie-lite</a>)</li>
<li>clone the image to an SD Card for the pi</li>
<li> boot the pi, note the ip address </li>
<li> add the ip address of the pi to the hosts file (see /etc/ansible/hosts)</li>
<li> run the playbook pi-omxplayer with sudo privileges </li>
<li> Some older PI's may require you to set the video res, Pi2B's should not. </li>
<code>
ansible-playbook -skK -u pi pi.yml
</code>
</ul>
<h2> pi.yml example</h2>
```yml
---
- hosts: pi
  ansible_required: 1.9
  roles:
    - pi-omxplayer
  vars:
    from_email: pi@jacobdevans.com
    to_email: boot-notifications@jacobdevans.com
```

<h2> hosts example</h2>
```
[pi]
entrance
showroom

[entrance]
192.168.1.250  video_url=http://www.example.com/videos/entrance.mp4 video_res=10800p

[showroom]
192.168.2.250  video_url=http://www.example.com/videos/showroom.mp4 video_res=720p
192.168.2.250  video_url=http://www.example.com/videos/showroom2.mp4


```
