# RKW TYPO3 7.6 LTS installation

This repository contains the TYPO3 website of the RKW with all relevant configurations.

## Installation of a local dev environment

An RKW Vagrant instance is required for installation. This can be found here:
https://github.com/RKWKomZe/Vagrant.git

Within the www directory this git repository will be cloned and checked out.
Important: The respective vagrant user must be used for this! 

```
cd /var/www/rkw-kompetenzzentrum.de/tmp
git init
git config core.filemode false
git config user.name "John Doe"
git config user.email joe@rkw.de
git add remote add origin https://github.com/RKWKomZe/RkwWebsite.git
git fetch origin develop
git pull origin develop
git checkout develop
mv ../public_html public_html_bak
mv RkwTemplate ../public_html
cd ..
chown -R vagrant:vagrant public_html
```

Now the database will be imported
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/dev
CREATE USER 'rkw_dev_komze'@'localhost' IDENTIFIED BY 'rkw'" | mysql -uroot -prkw
CREATE DATABASE rkw_dev_komze" | mysql -uroot -prkw
GRANT SELECT, UPDATE, INSERT, DELETE, DROP, ALTER, CREATE, INDEX, CREATE VIEW, SHOW VIEW ON rkw_dev_komze.* TO 'rkw_dev_komze'@'localhost'" | mysql -uroot -prkw
mysql -u root -prkw rkw_dev_komze < mysql-rkw_live_komze.sql
```

Now copy the dummy files. These replace all file and image references of the Live.
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/dev
cp fileadmin/* ../web/fileadmin
```

After that everything is installed with Composer. The .env file must be copied before.
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/
cp _env .env
composer install
```

Finally we copy a few central files and make individual adjustments if necessary.
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/web/typo3conf
cp AdditionalConfigurationDev.php AdditionalConfiguration.php
cp RealUrlConfigurationDev.php RealUrlAdditionalConfiguration.php
```

## Update
To get the latest changes, proceed as follows:
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/
git pull origin develop
composer update
./vendor/bin/typo3cms database:updateschema
./vendor/bin/typo3cms cache:flush
```
