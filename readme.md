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
git config user.name "[YOUR NAME]"
git config user.email [YOUR@EMAIL]
git add remote add origin [YOUR REPOSITORY]
git fetch origin development
git pull origin development
git checkout development
mv ../public_html public_html_bak
mv [FOLDER_FROM_REPOSITORY] ../public_html
cd ..
chown -R vagrant:vagrant public_html
```

Now we make sure that `chmod`-changes are not versioned. NEVER!
```
git config --global core.fileMode false
```
**IMPORTANT: If you are using vagrant you have to use the `vagrant` user of the local VM for the following steps (e.g. `vagrant`)**

Now import the database
```
cd /var/www/[WEBSITE]/public_html/dev
tar -xvzf [MYSQL_DUMP].tar.gz
mysql -uroot -prkw
CREATE DATABASE [YOUR_DATABASE] CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER '[YOUR_USER]'@'localhost' IDENTIFIED BY '[YOUR_PASSWORD]';
GRANT SELECT, UPDATE, INSERT, DELETE, DROP, ALTER, CREATE, INDEX, CREATE VIEW, SHOW VIEW ON [YOUR_DATABASE].* TO '[YOUR_USER]'@'localhost';
exit;
mysql -u root -[YOUR_DATABASE] < [MYSQL_DUMP].dev.sql
rm [MYSQL_DUMP].dev.sql
```

After that we have to copy some important files and set some chmods
```
cd /var/www/[WEBSITE]/public_html/
cp _.env.dev .env
cp web/_.htaccess.dev web/.htaccess
cp web/typo3conf/AdditionalConfiguration.dev.php web/typo3conf/AdditionalConfiguration.php
chmod 755 scripts/*
```

Make sure your command line uses the same PHP-version that your web-user needs
Check it with:
```
php -v
```

You can set you PHP-version for CLI using this command:
```
sudo update-alternatives --set php /usr/bin/php7.0
```

If everything is fine, install with composer now

**IMPORTANT: Do NOT run composer with `root` or super-user!!!**
```
cd /var/www/[WEBSITE]/public_html/
composer install
```

If you run into problems with composer, try to update composer first
```
composer self-update
```

Now we have to let your local machine know which hosts are to be directed to your local DEV.
You will find an example `/etc/hosts` (`etc-hosts.txt`) in `/dev/files`

## Password
The install-tool password is set to the known default value
```
joh316
```

You should be able to login into the backend with
```
User: admin
Pass: testtest
```

## Update
To get the latest changes, proceed as follows.
Database-compare and cache-flush will be done automatically. 
```
cd /var/www/[WEBSITE]/public_html/
git pull origin development
composer update
```

If composer can't execute on your VM, check if your `vagrant` user is in the `www-data`-group:
```
sudo usermod -a -G www-data vagrant
```

## Some usefull commands for CLI
Flush TYPO3 Caches
```
cd /var/www/[WEBSITE]/public_html/
./vendor/bin/typo3cms cache:flush --force
```

Fix folder structure
```
cd /var/www/[WEBSITE]/public_html/
./vendor/bin/typo3cms install:fixfolderstructure
```

Update database
```
cd /var/www/[WEBSITE]/public_html/
./vendor/bin/typo3cms database:updateschema
```

## Deployment
### General notes
Deployment is triggered via your local VM. 

**IMPORTANT: Deployment with password login (instead of RSA key) requires `expect` on the executing machine (local VM)**
```
apt-get install expect
```

For the deployment you need a branch with the same name as the deployment-step you want to execute.

Examples:
- If you want to deploy into the staging-enviroment you have to push everything to the `staging`-branch.
- If you want to deploy into the production-enviroment you have to push everything to the `production`-branch. 

You also need a Deployment-Script with the same name as the branch you want to deploy, e.g `./.surf/Staging.php` for `staging`-branch.

### Before you deploy
- If you worked in an extension with an own repository you have to commit all the changes with a corresponding tag on the `master`-branch of the extension first.
- In order to make your changes effective, the `composer.lock` has to get the new version information. So in your website-repository do a  
``` 
composer update
``` 
- The new `composer.lock` has be committed as well. So you need to push the changes of your website-repository before executing a deployment.

### How to deploy

Do the deployment using the following command from your DocumentRoot. 

**IMPORTANT: The surf extension requires PHP 7 on the CLI**

**IMPORTANT: Do NOT run deployment with `root` or super-user !!! Always use your local user (e.g. `vagrant`)**
```
php ./vendor/typo3/surf/surf deploy <DEPLOYMENT-FILE>
php ./vendor/typo3/surf/surf deploy Staging
```

You can use verbose-output to get more information if something goes wrong:
```
php ./vendor/typo3/surf/surf deploy Staging -v
php ./vendor/typo3/surf/surf deploy Staging -vv
php ./vendor/typo3/surf/surf deploy Staging -vvv
```

#### Troubleshooting
It may be the case that your first deployment hangs on the first task on the remote server.
This is because of the security question concerning adding ECDSA key fingerprint.
Workaround: Just login via SSH using your VM and confirm adding the ECDSA key fingerprint.
```
ssh [USER]@[SERVER] -p[PORT]
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

### File: _.htaccess.dev / _.htaccess.prod / _.htaccess.stage

Contains the settings for the given environment. Copy `_.htaccess.dev` to `.htaccess` in your local environment to get startet.

### File: _.htpasswd.dev / _.htpasswd.prod / _.htpasswd.stage

Same as _htaccess.*

### File: composer.json

Contains the packages to install. 
To be able to install packages that themselves have dependencies on packages that are only available as @dev, you need to specify the `minimum-stabilty` in combination with `prefer-stable`.
With `preferred-install` you can specify that certain packages should be installed as GIT repositories so that you can work on them directly. 

### Folder: dev

This folder contains some important files, scripts and a cleaned database dump for the development environment. Copy the dummy files to `/web/fileadmin`. They replace all file and image links.
The database dump can be imported directly into the Vagrant- environment. 

#### File: dev/etc-hosts.txt

Example file for the local `etc/hosts`

### File: dev/settings-for-phpstorm.zip

Settings for PHP-Storm. **These HAVE TO BE USED for development.**


### Folder: dummy

Contains dummy files for sys_file-references.

### File: _.env.dev / _.env.prod / _.env.stage

This file contains a list of all extensions to be activated in the given enviroment. 
If this file is copied to `.env` before installation, the package "helhum/dotenv-connector" will automatically create a corresponding `PackageStates.php`.

**Please note that all changes to this file will be versioned. Therefore, do not save any specific changes for the local environment here.**

### Folder: scripts

Contains shell scripts for development and deployment

#### File: scripts/git-status-recursive.sh

Shell script to recursively check the status of GIT repositories.

#### File: scripts/git-status-recursive.sh

Shell script for setting `git config core.filemode false` recursively.

### File: web/typo3conf/LocalConfiguration.php

This file contains all configurations for and dev- environments. At the same time you have to make sure that this file is NEVER deployed into a LIVE or STAGE-Environment. 

### File: web/typo3conf/AdditionalConfiguration.dev.php / AdditionalConfiguration.prod.php / AdditionalConfiguration.stage.php 

This file contains the relevant settings for the according environment.  Copy `web/typo3conf/AdditionalConfiguration.dev.php` to `web/typo3conf/AdditionalConfiguration.php` in your local environment to get startet.

**Do NOT put any access data or enycryption keys into versioning that are relevant for the live environment. These are ONLY to be put into `AdditionConfiguation.php` on the Live!!!**

### File: web/typo3conf/RealUrlConfiguration.php

The default configuration for RealUrl. 

**Do NOT make any changes here that are not intended for the LIVE-environment.**

