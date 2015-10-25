FROM stilliard/pure-ftpd

# e.g. you could change the default command run:
CMD /usr/sbin/pure-ftpd-virtualchroot -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -8 UTF-8 -H -C 20 -u 1000 -O clf:/var/log/pure-ftpd/transfer.log -Y 1 -A -p 30000:30200 -w

# Add SSL cert
ADD pure-ftpd.pem /etc/ssl/private/pure-ftpd.pem
RUN chmod 600 /etc/ssl/private/pure-ftpd.pem

# Exports and Volumes
VOLUME /etc/pure-ftpd
VOLUME /var/log/pure-ftpd
VOLUME /home
VOLUME /home/ftp
VOLUME /home/movie