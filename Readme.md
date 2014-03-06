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
