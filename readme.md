# RKW TYPO3 8.7 LTS installation

This repository contains the TYPO3 CMS with all relevant configurations.

## Installation of a local dev environment

**IMPORTANT: An RKW Vagrant instance should be used for installation.** 

### Step 1
Within the www directory on your host this GIT repository can be cloned and checked out.
Do this on you host machine.

```
host$ cd www/
host$ mkdir [THIS_PROJECT]
host$ git init
host$ git config core.filemode false
host$ git config user.name "[YOUR NAME]"
host$ git config user.email [YOUR@EMAIL]
host$ git add remote add origin [YOUR REPOSITORY]
host$ git fetch origin development
host$ git checkout development
```

### Step 2
Now we make sure that `chmod`-changes are not versioned. NEVER!
```
host$ git config --global core.fileMode false
```

### Step 3
**IMPORTANT: If you are using vagrant you have to use the `vagrant`-user of the local VM for the following steps.**

Login into your vagrant machine and continue with the `vagrant`-user on your VM.
```
vagrant ssh
```

### Step 4
Now import the database
```
vm$ cd /var/www/[THIS_PROJECT]/dev
vm$ tar -xvzf [MYSQL_DUMP].tar.gz
vm$ mysql -uroot -prkw
vm$ CREATE DATABASE [YOUR_DATABASE] CHARACTER SET utf8 COLLATE utf8_general_ci;
vm$ CREATE USER '[YOUR_USER]'@'localhost' IDENTIFIED BY '[YOUR_PASSWORD]';
vm$ GRANT SELECT, UPDATE, INSERT, DELETE, DROP, ALTER, CREATE, INDEX, CREATE VIEW, SHOW VIEW ON [YOUR_DATABASE].* TO '[YOUR_USER]'@'localhost';
vm$ exit;
vm$ mysql -u root -p[YOU_PASSWORD] [YOUR_DATABASE] < [MYSQL_DUMP].dev.sql
vm$ rm [MYSQL_DUMP].dev.sql
```

### Step 5
After that we have to copy some important files and set some chmods
```
vm$ cd /var/www/[THIS_PROJECT]
vm$ cp _.env.dev .env
vm$ cp web/_.htaccess.dev web/.htaccess
vm$ cp web/typo3conf/AdditionalConfiguration.dev.php web/typo3conf/AdditionalConfiguration.php
vm$ mkdir web/fileadmin/media
vm$ cp dummy/* web/fileadmin/media/
vm$ chmod 755 scripts/*
```

### Step 6
Now set your local database credentials in your `AdditionalConfiguration.php`.
```
vm$ cd /var/www/[THIS_PROJECT]
vm$ nano web/typo3conf/AdditionalConfiguration.php
```

For TYPO3 8.7:
```
$GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default'] => [
    'charset' => 'utf8',
    'dbname' => '[YOUR_DATABASE]',
    'driver' => 'mysqli',
    'host' => 'localhost',
    'password' => '[YOUR_PASSWORD]',
    'user' => '[YOUR_USER]'   
];
```
### Step 7
Make sure your command line uses the same PHP-version that your web-user needs
Check it with:
```
vm$ php -v
```

You can set you PHP-version for CLI using this command:
```
vm$ sudo update-alternatives --set php /usr/bin/php7.0
```

### Step 8
If everything is fine, install with composer now

**IMPORTANT: Do NOT run composer with `root` or super-user!!!**
```
vm$ cd /var/www/[THIS_PROJECT]
vm$ composer install
```

If you run into problems with composer, try to update composer itself first
```
vm$ composer self-update
```

### Step 9
Now we have to let your local machine know which hosts are to be directed to your local DEV.
You will find an example `/etc/hosts` (`etc-hosts.txt`) in `/dev/files`

### Step 10
Ready :-)

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
vm$ cd /var/www/[THIS_PROJECT]
vm$ git pull origin development
vm$ composer update
```

If composer can't execute on your VM, check if your `vagrant` user is in the `www-data`-group:
```
vm$ sudo usermod -a -G www-data vagrant
```

## Some usefull commands for CLI
Flush TYPO3 Caches
```
vm$ cd /var/www/[THIS_PROJECT]
vm$ ./vendor/bin/typo3cms cache:flush --force
```

Fix folder structure
```
vm$ cd /var/www/[THIS_PROJECT]
vm$ ./vendor/bin/typo3cms install:fixfolderstructure
```

Update database
```
vm$ cd /var/www/[THIS_PROJECT]
vm$ ./vendor/bin/typo3cms database:updateschema
```

## Deployment
### General notes
Deployment is triggered via your local VM. 

**IMPORTANT: Deployment with password login (instead of RSA key) requires `expect` on the executing machine (local VM)**
```
vm$ apt-get install expect
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
vm$ composer update
``` 
- The new `composer.lock` has be committed as well. So you need to push the changes of your website-repository before executing a deployment.

### How to deploy

Do the deployment using the following command from your DocumentRoot. 

**IMPORTANT: The surf extension requires PHP 7 on the CLI**

**IMPORTANT: Do NOT run deployment with `root` or super-user !!! Always use your local user (e.g. `vagrant`)**
```
vm$ php ./vendor/typo3/surf/surf deploy <DEPLOYMENT-FILE>
vm$ php ./vendor/typo3/surf/surf deploy Staging
```

You can use verbose-output to get more information if something goes wrong:
```
vm$ php ./vendor/typo3/surf/surf deploy Staging -v
vm$ php ./vendor/typo3/surf/surf deploy Staging -vv
vm$ php ./vendor/typo3/surf/surf deploy Staging -vvv
```

#### Troubleshooting
It may be the case that your first deployment hangs on the first task on the remote server.
This is because of the security question concerning adding ECDSA key fingerprint.
Workaround: Just login via SSH using your VM and confirm adding the ECDSA key fingerprint.
```
vm$ ssh [USER]@[SERVER] -p[PORT]
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

# Troubleshooting
##  `./vendor/bin/typo3cms install:generatepackagestates` crashes
The following errors may occur if your database connection is not configured correctly.
```
There are no commands defined in the "database" namespace.
```
```
The command "database:updateschema" does not exist. 
```

In that case check your `LocalConfiguration.php` / `AdditionalConfiguration.php`

## Frontend build not working
```
Error: EACCES: permission denied, open '/home/vagrant/.config/configstore/bower-github.json
```

So do what the message implies:
```
vm$ sudo chmod 777 /home/vagrant/.config/*
vm$ cd /var/www/[THIS_PROJECT]
vm$ composer install
```