FROM stilliard/pure-ftpd

# e.g. you could change the default command run:
CMD /usr/sbin/pure-ftpd-virtualchroot -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -8 UTF-8 -H -C 20 -u 1000 -O clf:/var/log/pure-ftpd/transfer.log -Y 1 -A -p 30000:30200 -w