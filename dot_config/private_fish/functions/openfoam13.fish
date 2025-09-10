function openfoam13
    cd ~/OF_projects/
    docker container run --rm -it \
        -u openfoam \
        --hostname openfoam13 \
        --mount type=bind,source=$PWD,target=/home/openfoam \
        morban/openfoam13:latest
end
