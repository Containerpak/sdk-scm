FROM ubuntu:26.04

COPY cpak-apt.conf /etc/apt/apt.conf.d/90cpak
COPY --chmod=0755 cpak-clean-junk /usr/bin/cpak-clean-junk

# git-lfs and the credential helpers come along because a checkout that asks
# for a password and finds nothing to ask with is a checkout that hangs, and
# less is not simpler when the tool is unusable.
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        git \
        git-lfs \
        gh \
        openssh-client \
        less && \
    cpak-clean-junk

RUN git --version && gh --version >/dev/null && git lfs version >/dev/null
