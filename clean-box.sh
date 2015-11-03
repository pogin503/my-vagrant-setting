if [ ! ${EUID:-${UID}} = 0 ]; then
    echo 'Please execute by root user.'
    exit 1
fi

dir=`pwd | awk -F/ '{print $2}'`
if [[ $dir = "vagrant" ]]; then
    echo "cp clean-box.sh ~/"
    exit 1
fi

# Unmount project
umount /vagrant

# Zero free space to aid VM compression
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Remove pacman cache files
pacman -Scc

# Remove Virtualbox specific files
rm -rf /usr/src/vboxguest* /usr/src/virtualbox-ose-guest*

# Remove Linux headers
rm -rf /usr/src/linux-headers*

# Remove documentation files
find /var/lib/doc -type f | xargs rm -f

# Remove bash history
unset HISTFILE
rm -f /root/.bash_history
rm -f /home/vagrant/.bash_history

# Cleanup log files
find /var/log -type f | while read f; do echo -ne '' > $f; done;

# Whiteout root
count=`df --sync -kP / | tail -n1  | awk -F ' ' '{print $4}'`;
count=$((count -= 1))
dd if=/dev/zero of=/tmp/whitespace bs=1024 count=$count;
rm /tmp/whitespace;

# Whiteout /boot
count=`df --sync -kP /boot | tail -n1 | awk -F ' ' '{print $4}'`;
count=$((count -= 1))
dd if=/dev/zero of=/boot/whitespace bs=1024 count=$count;
rm /boot/whitespace;

# Whiteout swap 
swappart=`cat /proc/swaps | tail -n1 | awk -F ' ' '{print $1}'`
swapoff $swappart;
dd if=/dev/zero of=$swappart;
mkswap $swappart;
swapon $swappart;
