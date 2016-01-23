# Set locale to en_US.UTF-8
cp /etc/locale.gen /etc/locale.gen.dist
sed -i -e "/^[^#]/s/^/#/" -e "/en_US.UTF-8/s/^#//" /etc/locale.gen
update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
# Actually, don't do dpkg-reconfigure, it brings back en_GB.UTF-8 and mixes it
# into the locales in a weird way.
# dpkg-reconfigure -f noninteractive locales

# Set timezone to America/New_York
cp /etc/timezone /etc/timezone.dist
echo "America/New_York" > /etc/timezone
dpkg-reconfigure -f noninteractive tzdata

# Set the keyboard to US, don't set any modifier keys, etc.
cp /etc/default/keyboard /etc/default/keyboard.dist
sed -i -e "/XKBLAYOUT=/s/gb/us/" /etc/default/keyboard
service keyboard-setup restart
