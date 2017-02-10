---
title: 'How To Set Apache Default/Catch-All Virtual Host [Ubuntu 16.04]'
date: 2016-10-27 01:46:36
tags:
---

## First, check you default virtual host and activating virtual host as:

        [admin@yourwebserver ~] # apachectl -t -D DUMP_VHOSTS
If the default server shown isn't the one you like,
<!-- more -->
## then list all avaliable sites configurations by typing:

        [admin@yourwebserver ~] # ls /etc/apache2/sites-available/

e.g. you have the following 3 domains activating, and yourdomain1.com.conf is your current default virtual host:

        yourdomain1.com.conf    yourdomain2.com.conf    yourdomain3.com.conf

say you would like "yourdomain2.com" to be the default virtual host
## then rename files so the one you like be the first file after sorted:

        [admin@yourwebserver ~] # mv yourdomain2.com.conf 000-yourdomain2.com.conf
        [admin@yourwebserver ~] # mv yourdomain1.com.conf 002-yourdomain1.com.conf
        [admin@yourwebserver ~] # mv yourdomain3.com.conf 002-yourdomain3.com.conf

## check the file order by typing:

        [admin@yourwebserver ~] # ls /etc/apache2/sites-available/
now your target file is the first file in the list:

        000-yourdomain2.com.conf   002-yourdomain1.com.conf    002-yourdomain3.com.conf

## Next, to activate the changes, you need to disable those origin sites (they no longer work since their conf names is changed), and enable renamed sites:

        [admin@yourwebserver ~] # sudo a2dissite yourdomain1.com.conf
        [admin@yourwebserver ~] # sudo a2dissite yourdomain2.com.conf
        [admin@yourwebserver ~] # sudo a2dissite yourdomain3.com.conf
        [admin@yourwebserver ~] # sudo a2ensite 000-yourdomain2.com.conf
        [admin@yourwebserver ~] # sudo a2ensite 002-yourdomain1.com.conf
        [admin@yourwebserver ~] # sudo a2ensite 002-yourdomain1.com.conf

## Last, restart apache

        [admin@yourwebserver ~] # sudo systemctl restart apache2
        [admin@yourwebserver ~] # sudo service apache2 restart


## Finally, Test Your Results :)