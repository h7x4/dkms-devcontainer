FROM ubuntu:latest

RUN apt-get update
RUN apt-get install --no-install-recommends --yes \
  build-essential \
  pkg-config \
  kmod \
  linux-headers-$(uname -r) \
  linux-modules-$(uname -r) \
  linux-modules-extra-$(uname -r) \
  linux-tools-$(uname -r) \
  linux-buildinfo-$(uname -r) \
  linux-cloud-tools-$(uname -r) \
  wget

CMD ["/bin/bash"]