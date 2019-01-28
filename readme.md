# RKW TYPO3 7.6 LTS installation

This repository contains the TYPO3 website of the RKW with all relevant configurations.

## Installation of a local dev environment

An RKW Vagrant instance is required for installation. This can be found here:

`https://github.com/RKWKomZe-Wesbites/Vagrant.git`

Within the www directory this git repository will be cloned and checked out.


```
cd /var/www/rkw-kompetenzzentrum.de/tmp
git init
git config core.filemode false
git config user.name "John Doe"
git config user.email joe@rkw.de
git add remote add origin https://github.com/RKWKomZe-Websites/RkwWebsite.git
git fetch origin development
git pull origin development
git checkout development
mv ../public_html public_html_bak
mv RkwTemplate ../public_html
cd ..
chown -R vagrant:vagrant public_html
```

Now we make sure that `chmod`-changes are not versioned. NEVER!
```
git config --global core.fileMode false
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

After that we have to copy some important files
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/
cp _env.dev .env
cp web/_htaccess.dev web/.htaccess
cp web/typo3conf/AdditionalConfiguration.dev.php web/typo3conf/AdditionalConfiguration.php
```
Install everything with composer now

**IMPORTANT: Do NOT run composer with `root` or super-user !!! Always use your local user (e.g. `vagrant`)**
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/
composer install
```

Now we have to let your local machine know which hosts are to be directed to your local DEV.
You will find an example `/etc/hosts` (`etc-hosts.txt`) in `/dev/files`


## Update
To get the latest changes, proceed as follows.
Database-compare and cache-flush will be done automatically. 
```
cd /var/www/rkw-kompetenzzentrum.de/public_html/
git pull origin develop
composer update
```

## Deployment
Deployment is triggered via your local VM. 

**IMPORTANT: Deployment with password login (instead of RSA key) requires `expect` on the executing machine (local VM)**
```
apt-get install expect
```

For the deployment you need a corresponding branch with all changes committed and pushed to the repository.
The branch needs to have the same name as the deployment-step you want to execute.

Examples:
- If you want to deploy into the staging-enviroment you have to push everything to the `staging`-branch.
- If you want to deploy into the production-enviroment you have to push everything to the `production`-branch. 

You also need a Deployment-Script with the same name as the branch you want to deploy, e.g `./.surf/Staging.php` for `staging`-branch.

Do the deployment using the following command from your DocumentRoot. 

**IMPORTANT: The surf extension requires PHP 7 on the CLI**

**IMPORTANT: Do NOT run deployment with `root` or super-user !!! Always use your local user (e.g. `vagrant`)**
```
php ./vendor/typo3/surf/surf deploy <DEPLOYMENT-FILE>
php ./vendor/typo3/surf/surf deploy Staging
```

You can use verbose-output to get more information if something goes wrong:
```
sudo php ./vendor/typo3/surf/surf deploy Staging -v
sudo php ./vendor/typo3/surf/surf deploy Staging -vv
sudo php ./vendor/typo3/surf/surf deploy Staging -vvv
```



## About the files and folders


### File: .gitignore

Contains the files and folders to ignore for versioning. 

### Folder: .surf

Contains the configuration for the TYPO3 extension Surf for deployment and the corresponding Deployment-Scripts.

### Folder: .surf/Credentials

Contains the access data for the respective environments

### Folder: .surf/Includes

Contains ncludes for the Deployment Script 

### File: _htaccess.dev / _htaccess.prod / _htaccess.stage

Contains the settings for the given environment. Copy `_htaccess.dev` to `.htaccess` in your local environment to get startet.

### File: _htpasswd.dev / _htpasswd.prod / _htpasswd.stage

Same as _htaccess.*

### File: composer.json

Contains the packages to install. 
To be able to install packages that themselves have dependencies on packages that are only available as @dev, you need to specify the `minimum-stabilty` in combination with `prefer-stable`.
With `preferred-install` you can specify that certain packages should be installed as GIT repositories so that you can work on them directly. 

### Folder: dev

This folder contains some important files, scripts and a cleaned database dump for the development environment. Copy the dummy files to `/web/fileadmin`. They replace all file and image links.
The database dump can be imported directly into the Vagrant- environment. 

### File: dev/files/settings-for-phpstorm.jar

Settings for PHP-Storm. **These HAVE TO BE USED for development.**

#### File: dev/scripts/git-status-recursive.sh

Shell script to recursively check the status of GIT repositories.

#### File: dev/scripts/etc-hosts.txt

Example file for the local '''etc/hosts'''

### Folder: dummy

Contains dummy files for sys_file-references.

### File: _env.dev / _env.prod / _env.stage

This file contains a list of all extensions to be activated in the given enviroment. 
If this file is copied to `.env` before installation, the package "helhum/dotenv-connector" will automatically create a corresponding `PackageStates.php`.


**Please note that all changes to this file will be versioned. Therefore, do not save any specific changes for the local environment here.**

### File: web/typo3conf/LocalConfiguration.php

This file contains all configurations for and dev- environments. At the same time you have to make sure that this file is NEVER deployed into a LIVE or STAGE-Environment. 

### File: web/typo3conf/AdditionalConfiguration.dev.php / AdditionalConfiguration.prod.php / AdditionalConfiguration.stage.php 

This file contains the relevant settings for the according environment.  Copy `web/typo3conf/AdditionalConfiguration.dev.php` to `web/typo3conf/AdditionalConfiguration.php` in your local environment to get startet.

**Do NOT put any access data or enycryption keys into versioning that are relevant for the live environment. These are ONLY to be put into `AdditionConfiguation.php` on the Live!!!**

### File: web/typo3conf/RealUrlConfiguration.php

The default configuration for RealUrl. 

**Do NOT make any changes here that are not intended for the LIVE-environment.**

