1. Repository 추가
```
PUT /_snapshot/my_backup
{
  "type": "fs",
  "settings": {
    "compress": true,
    "location": "/data_20191217/backup"
  }
}

#curl -XPUT 'http://localhost:9200/_snapshot/my_backup' -d {
  "type": "fs",
  "settings": {
     "location": "/data_20191217/backup",
     "compress": true
  }
}'
```
