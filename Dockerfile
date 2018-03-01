FROM openfoam/openfoam5-paraview54

ENV USER_HOME=/home/thunder/

USER root

# Create thunder user
RUN groupadd -r -g 1000 thunder && \
    useradd -mr -c "thunder" -d $USER_HOME -g 1000 -u 1000 thunder

USER thunder
WORKDIR $USER_HOME
