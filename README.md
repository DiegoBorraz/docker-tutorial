# Tutorial Docker basico

### 1- Aqui eu defino que meu container começará coma imagem do nginx e que a porta 80 do meu container apontará para a 8080 da minha maquina
* docker run -p 8080:80 nginx
    
### 2- Aqui eu executo o container definindo que tudo na pasta html alterará em tempo real o conteudo da pasta html do meu container
* docker run -p 8080:80 -v $(pwd)/html:/usr/share/nginx/html nginx

### 3- Agora buildo o docker e defino o nome do container
#### O "." no final do comando é o caminho do projeto, como estou no mesmo local só uso o .
* Docker build -t diegoavila33/docker-tutorial:latest .

### 4- Agora subo o container para o DockerHub
* docker push diegoavila33/docker-tutorial

### 5- Para pegar o container
* docker run -p 8080:80 diegoavila33/docker-tutorial

## Arquivo Dockerfile

### 1- Sempre que começar um arquivo Dockerfile voce precisa especificar uma imagem como o nginx
#### Começo com a ultima versão do nginx
* FROM nginx:latest

### 2- Quando criar esse container el vai pegar o index.html da pasta html e copiar para o index.html do container
#### Veja que preciso expecificar os locais do index da minha maquina como do container
* COPY html/index.html /usr/share/nginx/html/
