# docker-devops-minimal
docker container based on ubuntu 22.04 with minimal tools

- added repo for microsoft with gpg keys (to install powershell and azure cli)
- installed vim, zsh, pwsh, curl


# How to use
- Create a folder `dockerhome` in your home directory
- Copy the contents of `configs` to above folder
- After running `docker compose up -d` execute the shell by using command `docker exec -it devcon bash`