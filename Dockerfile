FROM plexinc/pms-docker:plexpass

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ffmpeg mkvtoolnix bc

ADD ./remux.sh /usr/bin/remux.sh
ADD ./comskip.ini /usr/lib/plexmediaserver/Resources/comskip.ini
RUN chmod 755 /usr/bin/remux.sh
