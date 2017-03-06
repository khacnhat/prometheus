
It took me a while to get prometheus scraping from the push-gateway.
I was trying to set the prometheus.yml config file in commander's docker-compose.yml
by volume mapping prometheus.yml into the prometheus container. This was not
working because prometheus.yml was _already_ inside the commander image.
I could make prometheus.yml an external volume (like the start-point volumes)
but for now I'm just creating a new prometheus service.
