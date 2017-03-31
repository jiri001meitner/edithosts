#!/bin/bash
sudo mv -f /tmp/edithosts/autoupdate.sh /opt/edithosts/autoupdate.sh
sudo mv -f /tmp/edithosts/update.sh /opt/edithosts/update.sh
sudo mv -f /tmp/edithosts/install.sh /opt/edithosts/install.sh
sudo mv -f /tmp/edithosts/version /opt/edithosts/version
sudo mv -f /tmp/edithosts/edithosts.sh /opt/edithosts/edithosts.sh && sudo ln -s /opt/edithosts/edithosts.sh /usr/sbin/edithosts
sudo mv -f /tmp/edithosts/gethosts.sh /opt/edithosts/gethosts.sh && sudo ln -s /opt/edithosts/gethosts.sh /usr/sbin/gethosts

sudo mv -f /tmp/edithosts/cron_edithosts_upgrade /opt/edithosts/edithosts_upgrade
sudo mv -f /tmp/edithosts/cron_edithosts_update_blocklist /opt/edithosts/edithosts_update_blocklist

sudo mv -f /tmp/edithosts/uninstall.sh /opt/edithosts/uninstall.sh
sudo mv -f /tmp/edithosts/licence /opt/edithosts/licence

sudo mv -f /tmp/edithosts/temporarilydisableblocking.sh /opt/edithosts/temporarilydisableblocking.sh && sudo ln -s /opt/edithosts/temporarilydisableblocking.sh /usr/sbin/temporarilydisableblocking
sudo mv -f /tmp/edithosts/refreshblocking.sh /opt/edithosts/refreshblocking.sh && sudo ln -s /opt/edithosts/refreshblocking.sh /usr/sbin/refreshblocking
sudo gzip /tmp/edithosts/man/cs/man1/edithosts.1

sudo mv -f /tmp/edithosts/man/cs/man1/edithosts.1.gz /usr/share/man/cs/man1/edithosts.1.gz

sudo chmod 755 /opt/edithosts/ -R

sudo ln -s /opt/edithosts/edithosts_upgrade /etc/cron.monthly/edithosts_upgrade
sudo ln -s /opt/edithosts/edithosts_update_blocklist /etc/cron.daily/edithosts_update_blocklist

exit 0
