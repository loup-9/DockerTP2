FROM node:12-alpine3.9

# Création du répertoire de travail de l'application
WORKDIR /app

# Installation des dépendances
COPY package*.json ./
RUN npm install --production

# Copie du code source
COPY . .

# Exposition du port
EXPOSE 3000

CMD ["node", "src/index.js"]
