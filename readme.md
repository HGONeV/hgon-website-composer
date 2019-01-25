# RKW TYPO3 7.6 LTS installation

This repository contains the TYPO3 website of the RKW with all relevant configurations.

## Installation of a local dev environment

An RKW Vagrant instance is required for installation. This can be found here:
https://github.com/RKWKomZe/Vagrant.git

Within the www directory this git repository will be cloned and checked out.

**Important: The respective vagrant user must be used for this!**

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

Now import the database
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/dev
tar -xvzf rkw_live_komze.dev.tar.gz
CREATE USER 'rkw_dev_komze'@'localhost' IDENTIFIED BY 'rkw'" | mysql -uroot -prkw
CREATE DATABASE rkw_dev_komze" | mysql -uroot -prkw
GRANT SELECT, UPDATE, INSERT, DELETE, DROP, ALTER, CREATE, INDEX, CREATE VIEW, SHOW VIEW ON rkw_dev_komze.* TO 'rkw_dev_komze'@'localhost'" | mysql -uroot -prkw
mysql -u root -prkw rkw_dev_komze < rkw_live_komze.dev.sql
rm rkw_live_komze.dev.sql
```

After that everything is installed with Composer.
 Then the `.env` file  has to be copied
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/
cp _env .env
```

Now we make sure that `chmod`-changes are not versioned. NEVER!
```
git config --global core.fileMode false
```

Install everything with composer now
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/
cp _env .env
composer install
```

Finally we copy a some central files and make individual adjustments if necessary.
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/web/typo3conf
cp AdditionalConfigurationDev.php AdditionalConfiguration.php
```

Now we have to let your local machine know which hosts are to be directed to your local DEV.
You will find an example `/etc/hosts` (`etc-hosts.txt`) in `/dev`


## Update
To get the latest changes, proceed as follows:
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/
git pull origin develop
composer update
./vendor/bin/typo3cms database:updateschema
./vendor/bin/typo3cms cache:flush
```

## Deployment
Deployment is triggered via the local VM. Best as root or via `sudo`.

**IMPORTANT: Deployment with password login (instead of RSA key) requires `expect` on the executing machine (local VM)**
```
apt-get install expect
```

**IMPORTANT: The surf extension requires PHP 7 on the CLI**

For the deployment you need a branch with all changes commited and pushed to the repository.
Examples:
- If you want to deploy into the stage-enviroment you have to push everything to `stage`-branch.
- If you want to deploy into the live-enviroment you have to push everything to the `production'-branch. 

You also need a Deployment-Script with the same name as your branch e.g `./.surf/Stage.php` for `stage`-branch.

Do the Deployment using this command form DocumentRoot:
```
sudo php ./vendor/typo3/surf/surf deploy <DEPLOYMENT-FILE>
sudo php ./vendor/typo3/surf/surf deploy Stage
```

You can use verbose-output to get more information:
```
sudo php ./vendor/typo3/surf/surf deploy Stage -v
sudo php ./vendor/typo3/surf/surf deploy Stage -vv
sudo php ./vendor/typo3/surf/surf deploy Stage -vvv
```

## About the files and folders

### File: composer.json

Contains the packages to install. 
To be able to install packages that themselves have dependencies on packages that are only available as @dev, you need to specify the `minimum-stabilty` in combination with `prefer-stable`.
With `preferred-install` you can specify that certain packages should be installed as GIT repositories so that you can work on them directly. 

### Folder: .surf

Contains the configuration for the TYPO3 extension Surf for deployment and the corresponding Deployment-Scripts.

### Folder: .surf/Credentials

Contains the access data for the respective environments

### Folder: .surf/Includes

Contains ncludes for the Deployment Script 

### Folder: dev

This folder contains some important files, scripts and a cleaned database dump for the development environment. Copy the dummy files to `/web/fileadmin`. They replace all file and image links.
The database dump can be imported directly into the Vagrant- environment. 

### File: dev/files/settings-for-phpstorm.jar

Settings for PHP-Storm. **These HAVE TO BE USED for development.**

#### File: dev/scripts/git-status-recursive.sh

Shell script to recursively check the status of GIT repositories.

#### File: dev/scripts/etc-hosts.txt

Example file for the local '''etc/hosts'''

### File: _env

This file contains a list of all extensions to be activated. If this file is copied to `.env` before installation, the package "helhum/dotenv-connector" will automatically create a corresponding `PackageStates.php`.

### File: .gitignore

Contains the files and folders to ignore for versioning. 

**Please note that all changes to this file will be versioned. Therefore, do not save any specific changes for the local environment here.**

### File: web/typo3conf/LocalConfiguration.php

This file contains all configurations for and dev- environments. At the same time you have to make sure that this file is NEVER deployed into a LIVE or STAGE-Environment. 

### File: web/typo3conf/AdditionalConfigurationLive.php

This file serves as a template for the settings relevant to the live environment. Copy this file to `AdditionalConfiguration.php` to make settings for the live environment.

**Do NOT put any access data or enycryption keys into versioning that are relevant for the live environment. These are ONLY to be put into `AdditionConfiguation.php` on the Live!!!**

### File: web/typo3conf/AdditionalConfigurationDev.php

This file serves as a template for the settings relevant for the DEV-environment. Copy this file to `AdditionalConfiguration.php` to make settings for your own DEV-environment.

### File: web/typo3conf/RealUrlConfiguration.php

The default configuration for RealUrl. 

**Do NOT make any changes here that are not intended for the LIVE-environment.**

