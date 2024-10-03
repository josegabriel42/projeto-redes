# Usar uma imagem base
FROM node:16

# Definir diretório de trabalho
WORKDIR /app

# Copiar package.json e instalar dependências
COPY package*.json ./
RUN npm install

# Copiar o restante do código
COPY . .

ENV PORT=8080

# Expor a porta do aplicativo
EXPOSE 8080

# Comando para rodar o aplicativo
CMD ["npm", "start"]
