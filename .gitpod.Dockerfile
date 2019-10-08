FROM julia as base
FROM gitpod/workspace-full
COPY --from=base /usr/local/julia /usr/local/
RUN sudo apt-get update && \
    sudo apt-get install build-essential libatomic1 python gfortran perl wget m4 cmake pkg-config --yes && \
    sudo rm -rf /var/lib/apt/lists/*