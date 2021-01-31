#! /bin/bash
curl -sSO https://dl.google.com/cloudagents/add-logging-agent-repo.sh && sudo bash add-logging-agent-repo.sh && sudo apt-get update && sudo apt-get install google-fluentd && sudo apt-get install -y google-fluentd-catch-all-config && sudo service google-fluentd start
curl -sSO https://dl.google.com/cloudagents/add-monitoring-agent-repo.sh && sudo bash add-monitoring-agent-repo.sh && sudo apt-get update && sudo apt-get install -y stackdriver-agent && sudo service stackdriver-agent start

apt -y install apache2
cat <<EOF > /var/www/html/index.html
<html><body><h1>Hello World</h1>
<p>DIEGOOOO dmph 1 apache server.</p>
</body></html>
EOF