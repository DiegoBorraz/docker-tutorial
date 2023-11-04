# Sempre que começar um arquivo Dockerfile voce precisa especificar
# uma imagem como o nginx


# Começo com a ultima versão do nginx
FROM nginx:latest

# Quando criar esse container el vai pegar o index.html da pasta html e copiar para o index.html do container
# Veja que preciso expecificar os locais do index da minha maquina como do container
COPY html/index.html /usr/share/nginx/html/


