
alias installmysql='docker run -d -p 3306:3306  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes  -v /my/custom:/etc/mysql/conf.d  -v /storage/test-mysql/datadir:/var/lib/mysql mysql:5.5'

alias installelastic='docker run --name myelastic -v /tmp/:/usr/share/elasticsearch/config  -p 9200:9200 -p 9300:9300  -e ES_HEAP_SIZE=1g -d elasticsearch'

alias installkibana='docker run -d -p 5601:5601 --link myelastic:elasticsearch -e ELASTICSEARCH_URL=http://elasticsearch:9200 kibana'

alias installlogstash='docker run -d -v "/tmp/logstash.conf":/usr/local/logstash/config/logstash.conf -v /tmp/:/tmp/ logstash -f /usr/local/logstash/config/logstash.conf'
