FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install host build tools, rockboxdev prerequisites, and target audio libraries
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    pkg-config \
    wget \
    curl \
    ca-certificates \
    texinfo \
    bison \
    flex \
    patch \
    tar \
    gzip \
    bzip2 \
    xz-utils \
    autoconf \
    automake \
    libtool \
    libtool-bin \
    gtk-doc-tools \
    libgmp-dev \
    libmpfr-dev \
    libmpc-dev \
    p7zip-full \
    squashfs-tools \
    genisoimage \
    perl \
    python3 \
    libsdl2-dev \
    libfreetype-dev \
    libopusfile-dev \
    libwavpack-dev \
    libasound2-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
