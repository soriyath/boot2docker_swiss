FROM boot2docker/boot2docker
Maintainer Sumi Straessle

# Add configuration files (swiss ntp servers, swiss timezone)
ADD ntpd $ROOTFS/etc/rc.d/ntpd
ADD Zurich /etc/localtime

RUN /make_iso.sh
CMD ["cat", "boot2docker.iso"]