FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install all toolchain dependencies, build utilities, and firmware packaging tools
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    pkg-config \
    wget \
    texinfo \
    bison \
    flex \
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
