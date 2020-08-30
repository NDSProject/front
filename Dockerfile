FROM alpine:3.12.0
LABEL authors="Fazendaaa"

##
## Configuring everthing needed in the system 
##
# https://github.com/rstudio/httpuv/issues/63#issuecomment-300560203
RUN [ "apk", "add", "--no-cache", \
    "autoconf", \
    "automake", \
    "curl", \
    "ccache", \
    "clang", \
    "clang-dev", \
    "clang-libs", \
    "clang-static", \
    "git", \
    "libc-dev", \
    "libtool", \
    "libgomp", \
    "libstdc++", \
    "linux-headers", \
    "m4", \
    "perl" \
    ]

## This is to find the omp path to pass as clang flag -fopenmp
## 
## https://stackoverflow.com/a/13080107/7092954
## https://unix.stackexchange.com/a/312281
## 
RUN [ "apk", "add", "--no-cache", "gcc" ]
RUN [ "mkdir", "/usr/lib/omp/" ]
RUN export OMP_PATH=`echo '#include <omp.h>' | cpp -H -o /dev/null 2>&1 | head -n1 | cut -d' ' -f 2`
ENV OMP_PATH=${OMP_PATH}
RUN [ "apk", "del", "gcc" ]

RUN [ "apk", "add", "--no-cache", "nodejs", "npm" ]
