# Usar uma imagem base do Python 3.9
FROM python:3.9-slim

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar os arquivos locais para o contêiner
COPY . .

# Instalar as dependências listadas em requirements.txt
RUN pip install -r requirements.txt

# Expor a porta 8080 no contêiner
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["python", "app.py"]
