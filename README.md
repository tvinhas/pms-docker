# pms-docker
Plex on Docker with commercial removal and some other goodies

For multiple Plex instances on the same server:

docker run -d --name plex -h 10.0.0.45 -e TZ="America/New_York" -e PLEX_CLAIM="claim-4qyfDAd9xqe7ppWU22sZ" \
-v /plex/config:/config -v /plex/transcode:/transcode -v /dvr:/dvr \
-p 10.0.0.45:32400:32400/tcp \
-p 10.0.0.45:3005:3005/tcp \
-p 10.0.0.45:8324:8324/tcp \
-p 10.0.0.45:32469:32469/tcp \
-p 10.0.0.45:1900:1900/udp \
-p 10.0.0.45:32410:32410/udp \
-p 10.0.0.45:32412:32412/udp \
-p 10.0.0.45:32413:32413/udp \
-p 10.0.0.45:32414:32414/udp \
tvinhas/pms-docker



docker run -d --name plex-ota -h 10.0.0.46 -e TZ="America/New_York" -e PLEX_CLAIM="claim-jWdRbwnXzxy1aEZt2LDd" \
-v /plex/config-ota:/config -v /plex/transcode-ota:/transcode -v /dvr:/dvr \
-p 10.0.0.46:32400:32400/tcp \
-p 10.0.0.46:3005:3005/tcp \
-p 10.0.0.46:8324:8324/tcp \
-p 10.0.0.46:32469:32469/tcp \
-p 10.0.0.46:1900:1900/udp \
-p 10.0.0.46:32410:32410/udp \
-p 10.0.0.46:32412:32412/udp \
-p 10.0.0.46:32413:32413/udp \
-p 10.0.0.46:32414:32414/udp \
tvinhas/pms-docker
