
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
* "acknowledged": true라는 응답을 받아야만 정상적으로 작동한 것


2. 인덱스 조회
```
_cat/indices
```

3. 전체 인덱스(색인) 삭제
```
curl -XDELETE 'http://localhost:9200/*'

$ curl -XDELETE 'http://localhost:9200/_all'
```
* 실수로 삭제를 하는 것을 막는 방법으로 elasticsearch.yml에서 삭제 방어를 설정할 있다.
```xml
# elasticsearch.yml
action.destructive_requires_name: true
```
* 해당 내용을 설정 후 전체 삭제를 시도하려고 한다면 에러가 발생하면서 전체 삭제가 진행되지 않는다.
