* 컴퓨터의 DMI(Desktop Management Interface) 정보를 확인할 수 있는 명령어
* 시스템 하드웨어 정보 확인할 수 있는 명령어

```bash
# CPU 정보 확인
dmidecode -t processor

dmidecode | more 
# dmidecode 명령만 입력하면 내가 필요로 하는 정보 외에도 모든 정보가 나오기 때문에 more를 통해서 확인을 하거나 
# 옵션을 사용해서 확인하는 것을 권장
```

* 옵션
