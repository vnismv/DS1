FROM nginx:alpine

# Supprime la page par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copie TOUS les fichiers du projet
COPY html/ /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/

# Exposition du port 80
EXPOSE 80

# Commande de lancement
CMD ["nginx", "-g", "daemon off;"]