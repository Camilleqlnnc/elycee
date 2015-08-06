# Splj - E-lycee
final school project | Public blog and dashboard MCQ test
# Framework
Symfony 2.7

Bootstrap based on https://github.com/esironal/dashgum-template

# Kitstarter Front / Dependencies 

https://github.com/mazgithub/maz-grunt-kitstarter

requireJs 2.1

jQuery 1.11

#Déploiement

1. Bundle Symfony

2. Update app/config/parameters.yml

3. SwiftMailer : update app/config/config.yml

4. /preprocess npm start

5. /site

php app/console doctrine:schema:update --force

php app/console server:run

php app/console fos:user:create + update roles









