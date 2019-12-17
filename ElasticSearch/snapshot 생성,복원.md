
1. 인덱스 조회
```
_cat/indices
```


2. Repository 추가
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
* ```"acknowledged": true```라는 응답을 받아야만 정상적으로 작동한 것


3. 스냅샷 만들기
```
PUT /_snapshot/my_backup/[manysong_20170206]?wait_for_completion=true
{
  "indices": "manysong_1_t",
  "ignore_unavailable": true,
  "include_global_state": true
}
```
* 해당으로 실행된 것은 전체 클러스터 백업을 실행
* wait_for_completion = true의 옵션을 주지 않으면 프로세스가 백그라운드로 실행된다.


4. 스냅샷 확인
```
GET /_snapshot/my_backup/[manysong_20170206]/_status
```

5. 스냅샷 복원
```
POST /_snapshot/my_backup/manysong_20170206/_restore
{
  "indices": "manysong_1_t",
  "index_settings": {
    "index.number_of_replicas": 0
  },
  "ignore_index_settings": [
    "index.refresh_interval"
  ]
}
```
