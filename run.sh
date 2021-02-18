# Creation des dossiers
# ----------------------------
if [ ! -d $(pwd)/data]
then
        mkdir $(pwd)/data
fi

if [! -d $(pwd)/data/jenkins ]
then
        mkdir $(pwd)/data/jenkins
fi

# Gestion des droits
# ------------------
chown 1000 -R $(pwd)/data/jenkins


# Restart +clear logs
# --------------------
docker-compose stop
truncate -s var/lib/docker/containers/*/*-json.log
docker-compose up --build -d# Creation des dossiers
# ----------------------------
if [ ! -d $(pwd)/data]
then
        mkdir $(pwd)/data
fi

if [! -d $(pwd)/data/jenkins ]
then
        mkdir $(pwd)/data/jenkins
fi

# Gestion des droits
# ------------------
chown 1000 -R $(pwd)/data/jenkins


# Restart +clear logs
# --------------------
docker-compose stop
truncate -s var/lib/docker/containers/*/*-json.log
docker-compose up --build -d

