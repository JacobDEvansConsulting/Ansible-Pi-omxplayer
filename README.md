Role Name
=========

A simple way to deploy videos to Raspberry Pi's loop at boot for unattended displays.

Requirements
------------

#### Download the latest lite raspbian image (raspbian-jessie-lite)
 - clone the image to an SD Card for the pi
 - boot the pi, note the ip address
 - add the ip address of the pi to the hosts file (see /etc/ansible/hosts)
 - run the playbook pi-omxplayer with sudo privileges
 - Some older PI's may require you to set the video res, Pi2B's should not.
   `ansible-playbook -skK -u pi pi.yml`

Role Variables
--------------

[pi:children]
entrance
showroom

[entrance]
192.168.1.250  video_url=http://www.example.com/videos/entrance.mp4 video_res=10800p

[showroom]
192.168.2.250  video_url=http://www.example.com/videos/showroom.mp4 video_res=720p
192.168.2.250  video_url=http://www.example.com/videos/showroom2.mp4


dependencies
------------

None

Example Playbook
----------------

- hosts: pi
  roles:
    - pi-omxplayer
  vars:
    from_email: pi@jacobdevans.com
    to_email: boot-notifications@jacobdevans.com


License
-------

MIT

Author Information
------------------
Jacob Evans
http://www.jacobdevans.com

