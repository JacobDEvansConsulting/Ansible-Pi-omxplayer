# Ansible-Pi-omxplayer
Ansible Scripts for Raspberry Pi's to download and play videos via http source.

<h2> Initial Configuration Steps </h2>
<ul>
<li>Download the latest raspbian lite image, (raspbian-jessie-lite)</li>
<li>clone the image to an SD Card for the pi</li>
<li> boot the pi, note the ip address </li>
<li> run the playbook pi-omxplayer with sudo privileges </li>
<code>ansible-playbook -skK -u pi pi.yml </code>
</ul>
