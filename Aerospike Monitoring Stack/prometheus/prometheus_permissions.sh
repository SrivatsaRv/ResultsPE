
sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool
sudo chown prometheus:prometheus /etc/prometheus/prometheus
sudo chown prometheus:prometheus /etc/prometheus/promtool

sudo chown -R prometheus:prometheus /etc/prometheus/consoles
sudo chown -R prometheus:prometheus /etc/prometheus/console_libraries

sudo chown -R prometheus:prometheus /etc/prometheus/prometheus.yml