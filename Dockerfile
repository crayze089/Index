FROM debian:stable-slim

# Install Tor and system packages
RUN apt-get update && apt-get install -y \
    tor \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Configure Tor to forward traffic to your Netlify site
RUN echo "HiddenServiceDir /var/lib/tor/hidden_service/" >> /etc/tor/torrc && \
    echo "HiddenServicePort 80 kaleidoscopic-cobbler-bd5f3a.netlify.app:80" >> /etc/tor/torrc

# Create a startup script that outputs your onion link straight to the Render dashboard logs
RUN echo '#!/bin/sh\n\
tor &\n\
sleep 15\n\
if [ -f /var/lib/tor/hidden_service/hostname ]; then\n\
    echo "=================================================="\n\
    echo "YOUR 24/7 ONION ADDRESS IS:"\n\
    cat /var/lib/tor/hidden_service/hostname\n\
    echo "=================================================="\n\
fi\n\
tail -f /dev/null' > /entrypoint.sh && \
    chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
