FROM mysql:8.0.22

RUN apt-get update
RUN	DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
	build-essential \
	ca-certificates \
	cpanminus \
	curl \
	gcc \
	git \
	perl \
	perl-modules \
	libnss-sss \
	ncat \
	make

RUN PERL_MM_USE_DEFAULT=1 cpan App::Sqitch

