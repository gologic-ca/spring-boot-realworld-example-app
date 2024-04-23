# Utilisez l'image officielle de SonarQube
FROM sonarqube:latest

# Créez un volume pour les plugins
VOLUME /opt/sonarqube/extensions/plugins

# Copiez le fichier sonar-config.properties dans le conteneur
COPY sonar-config.properties /opt/sonarqube/conf/sonar.properties

# Installez le plugin dependency-check
RUN wget -O /opt/sonarqube/extensions/plugins/sonar-dependency-check-plugin.jar \
    https://github.com/dependency-check/dependency-check-sonar-plugin/releases/download/5.0.0/sonar-dependency-check-plugin-5.0.0.jar