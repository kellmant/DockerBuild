RUN \
	echo -n "Gateway In The Sky Project " > /etc/motd && \
	echo -n "Securing Labs ADMIN Shell [Alpine:latest] " >> /etc/motd && \
	echo "overlaynetwork[TRUSTED] " >> /etc/motd && \
	echo " " >> /etc/motd && \
	apk -Uuvv add --no-cache util-linux coreutils findutils grep \
	jq linux-headers fontconfig openssl-dev \ 
	bc vim dialog ncurses ncurses-libs ncurses-terminfo libevent tmux openssh binutils xdg-utils && \
	rm -rf /root/.cache && \
	rm -rf /tmp/* && \
	rm -rf /var/cache/apk/*
