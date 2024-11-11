FROM node:20-alpine

# Define o diretório de trabalho no container
WORKDIR /usr/src/app

# Copia o package.json e instala as dependências
COPY ./app/package*.json ./
RUN npm install

# Copia os arquivos do app
COPY ./app .

# Expõe a porta 3000
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
