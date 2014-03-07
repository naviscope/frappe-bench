## Frappe bench

This repository helps you setup an isolated environment (bench) to run and
develop ERPNext. A virtualenv is installed in the env directory. You can
activate it by running `source ./env/bin/activate` or use execute using
absolute/relative path (eg, `./env/bin/frappe`).

#### Pre requisites

You will need some system packages
```
sudo apt-get install python-dev build-essential python-mysqldb git memcached ntp vim screen htop mysql-server libmysqlclient-dev libxslt1.1 libxslt1-dev redis-server
```

#### Usage

```
git clone https://github.com/frappe/frappe-bench
cd frappe-bench
./scripts/install.sh single [sitename [dbname]]
```

#### Migrating from ERPNext version 3

Make sure that you have updated your site for the latest version of 3.x.x and take a database backup.
```
git clone https://github.com/frappe/frappe-bench
cd frappe-bench
./scripts/install.sh migrate_3_to_4 /path/to/old/erpnext
```

### Development
```
./env/bin/honcho start
```

### Updating software

```
./scripts/update.sh
```

### Production Deployment
* Install nginx and supervisor
* `cp config/nginx.conf /etc/nginx/conf.d/frappe.conf`
* `cp config/supervisor.conf /etc/supervisor/conf.d/frappe.conf`
