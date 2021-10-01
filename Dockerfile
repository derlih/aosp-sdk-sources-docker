FROM ghcr.io/derlih/aosp-build-docker:main

ARG AOSP_TAG

WORKDIR /aosp-src
RUN repo init -u https://android.googlesource.com/platform/manifest -b $AOSP_TAG -g all,-notdefault,tools
RUN repo sync -j$(nproc)
