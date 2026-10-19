FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install build utilities, Autotools (required by rockboxdev), and audio libraries
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    pkg-config \
    wget \
    texinfo \
    bison \
    flex \
    autoconf \
    automake \
    libtool \
    libtool-bin \
    p7zip-full \
    squashfs-tools \
    genisoimage \
    perl \
    libsdl2-dev \
    libfreetype-dev \
    libopusfile-dev \
    libwavpack-dev \
    libasound2-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
