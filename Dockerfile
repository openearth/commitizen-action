FROM python:3.8
RUN apt-get update && apt-get install -y --no-install-recommends \
		git-lfs \
	&& rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
