/var/local/grafana_install.sh:
  file.managed:
    - source: salt://aerospike/install_grafana_7.5.7.sh
    - mode: 755


bash /var/local/grafana_install.sh:
  cmd.run


/var/lib/grafana/dashboards/namespace.json:
  file.managed:
  
    - source: salt://aerospike/grafana/namespace.json
    - makedirs: True
    - mode: 755

/var/lib/grafana/dashboards/node.json:
  file.managed:
    - source: salt://aerospike/grafana/node.json
    - makedirs: True
    - mode: 755
    

/var/lib/grafana/dashboards/cluster.json:
  file.managed:
    - source: salt://aerospike/grafana/cluster.json
    - makedirs: True
    - mode: 755

/var/lib/grafana/dashboards/xdr.json:
  file.managed:
    - source: salt://aerospike/grafana/xdr.json
    - makedirs: True
    - mode: 755

/var/lib/grafana/dashboards/alerts.json:
  file.managed:
    - source: salt://aerospike/grafana/alerts.json
    - makedirs: True
    - mode: 755

/etc/grafana/provisioning/dashboards/all.yml:
  file.managed:
    - source: salt://aerospike/grafana/grafana_dashboard_all.yml
    - makedirs: True
    - mode: 755
    

/etc/grafana/provisioning/datasources/all.yml:
  file.managed:
    - source: salt://aerospike/grafana/grafana_datasources_all.yml
    - makedirs: True
    - mode: 755

