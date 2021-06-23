include:
  - aerospike.nb6.prometheus.install 
  - aerospike.nb6.prometheus.config

/var/etc/prometheus
  file.directory:
    - mode: 755
    - makedirs: True
    
/var/lib/prometheus:
  file.directory:
    - mode: 755
    - makedirs: True

/var/local/install_prometheus.sh:
  file.managed:
    - source: salt://aerospike/install_prometheus_2.26.0.sh
    - mode: 755

bash /var/local/install.sh:
  cmd.run




