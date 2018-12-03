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

## About the files and folders

### File: composer.json

Contains the packages to install. 
To be able to install packages that themselves have dependencies on packages that are only available as @dev, you need to specify the `minimum-stabilty` in combination with `prefer-stable`.
With `preferred-install` you can specify that certain packages should be installed as GIT repositories so that you can work on them directly. 

### Folder: dev

This folder contains dummy files and a cleaned database dump for the development environment. Copy the dummy files to `/web/fileadmin`. They replace all file and image links.
The database dump can be imported directly into the Vagrant- environment. 

### File: _env

This file contains a list of all extensions to be activated. If this file is copied to `.env` before installation, the package "helhum/dotenv-connector" will automatically create a corresponding `PackageStates.php`.

### File: .gitignore

Contains the files and folders to ignore for versioning. 
**Please note that all changes to this file will be versioned. Therefore, do not save any specific changes for the local environment here.**

### File: settings-for-phpstorm.jar

Settings for PHP-Storm. ** These HAVE TO BE USED for development.**

### File: LocalConfiguration.php

This file contains all configurations for live- and dev- environments. At the same time you have to make sure that neither passwords nor salted strings are saved here. With regard to security settings, this file is always based on the live version, i.e. it tends to be more restrictive.
** Do NOT make any changes here! Use your local `AdditionalConfiguration.php` instead **

### AdditionalConfigurationLive.php

This file serves as a template for the settings relevant to the live environment. Copy this file to `AdditionalConfiguration.php` to make settings for the live environment.
** Do NOT put any access data or enycryption keys into versioning that are relevant for the live environment. These are ONLY to be put into `AdditionConfiguation.php` on the Live!!!**

### AdditionalConfigurationDev.php

This file serves as a template for the settings relevant for the DEV-environment. Copy this file to `AdditionalConfiguration.php` to make settings for your own DEV-environment.

### RealUrlConfiguration.php

The default configuration for RealUrl. ** Do NOT make any changes here that are not intended for the LIVE-environment. **

### RealUrlConfigurationDev.php

Can be copied to `RealUrlAdditionalConfiguation.php` to override or add to the default configuration for the DEV-environment.

