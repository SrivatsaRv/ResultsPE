update packages:
  cmd.run:
    - name: apt-get update

download package:
  cmd.run:
    - name: wget "https://github.com/prometheus/prometheus/releases/download/v2.26.0/prometheus-2.26.0.linux-amd64.tar.gz"

extract package:
  cmd.run:
    - name: tar -xvf prometheus-2.26.0.linux-amd64.tar.gz

rename directory:
  cmd.run:
    - name: mv prometheus-2.26.0.linux-amd64 prometheus-files

create prometheus user:
  cmd.run:
    - name: sudo useradd --no-create-home --shell /bin/false prometheus

/etc/prometheus:
  file.directory:
    - mode: '0755'
    - makedirs: True
    - user: prometheus
    - group: prometheus

/var/lib/prometheus:
  file.directory:
    - mode: '0755'
    - makedirs: True
    - user: prometheus
    - group: prometheus

move files to etc directory:
/var/local/move_files.sh:
  file.managed:
    - source: salt://aerospike/prometheus/copy_files.sh
    - mode: '0755'

bash /var/local/move_files.sh:
  cmd.run

create service file:
/lib/systemd/system/prometheus.service:
  file.managed:
    - source: salt://aerospike/prometheus/prometheus.service
    - makedirs: True
    - user: root

setup primary configuration file:
/etc/prometheus/prometheus.yml:
  file.managed:
    - source: salt://aerospike/prometheus.yml
    - mode: '0755'
    - user: prometheus
    - group: prometheus

run ownership change commands:
/var/local/prometheus_permissions.sh:
  file.managed:
    - source: salt://aerospike/prometheus/prom_permissions.sh
    - mode: '0755'

bash /var/local/prom_permissisons.sh:
  cmd.run
