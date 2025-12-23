function ofcom
    docker run --rm -it -v $PWD:/home/ubuntu/case -w /home/ubuntu/case -u ubuntu openfoam-com
end
