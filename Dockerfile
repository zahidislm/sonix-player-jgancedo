FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Complete audited package set for rockboxdev.sh and sonix-packer
RUN apt-get update && apt-get install -y \
    # Host Toolchain & Compilers
    build-essential \
    gcc \
    git \
    g++ \
    make \
    patch \
    diffutils \
    # Archive & Download Utilities
    tar \
    gzip \
    bzip2 \
    xz-utils \
    unzip \
    p7zip-full \
    wget \
    curl \
    ca-certificates \
    # Shell & Text Processing (Required by glibc & rockboxdev checks)
    gawk \
    sed \
    grep \
    perl \
    python3 \
    python-is-python3 \
    # Autotools, Code Generators & Macro Tools (Required by autoreconf for GLib/Glibc)
    autoconf \
    automake \
    libtool \
    libtool-bin \
    m4 \
    gettext \
    autopoint \
    gtk-doc-tools \
    texinfo \
    bison \
    flex \
    pkg-config \
    help2man \
    # GCC Host Math Libraries (Checked via checklib in rockboxdev)
    libgmp-dev \
    libmpfr-dev \
    libmpc-dev \
    libisl-dev \
    zlib1g-dev \
    libffi-dev \
    # Sonix Player & Firmware Packing Dependencies
    squashfs-tools \
    genisoimage \
    libsdl2-dev \
    libfreetype-dev \
    libopusfile-dev \
    libwavpack-dev \
    libasound2-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
