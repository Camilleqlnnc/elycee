# Splj - E-lycee
final school project | Public blog and dashboard MCQ test
# Framework
Symfony 2.7

Bootstrap based on https://github.com/esironal/dashgum-template
# Kitstarter Front
https://github.com/mazgithub/maz-grunt-kitstarter

#Déploiement

1.Bundle Symfony

composer update

FOSUser : https://github.com/FriendsOfSymfony/FOSUserBundle

FOSJsRouting : https://github.com/FriendsOfSymfony/FOSJsRoutingBundle

2. Update app/config/parameters.yml

3. SwiftMailer : update app/config/config.yml

4. /preprocess

npm start

5. /site

php app/console doctrine:schema:update --force

php app/console server:run

php app/console fos:user:create + update roles









