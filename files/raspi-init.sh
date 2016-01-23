# backup Files
cp /etc/locale.gen /etc/locale.gen.dist
cp /etc/timezone /etc/timezone.dist
cp /etc/default/keyboard /etc/default/keyboard.dist
#Update Configs
sed -i -e "/^[^#]/s/^/#/" -e "/en_US.UTF-8/s/^#//" /etc/locale.gen
sed -i -e "/XKBLAYOUT=/s/gb/us/" /etc/default/keyboard
echo "America/New_York" > /etc/timezone
#Set new configs
update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
dpkg-reconfigure -f noninteractive tzdata
service keyboard-setup restart
