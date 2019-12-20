* CPU 코어 전체 개수
```bash
grep -c processor /proc/cpuinfo
```

* 물리 CPU 수
```bash
 grep ^processor /proc/cpuinfo | wc -l
```

* CPU당 물리 코어 개수
```bash
grep 'cpu cores' /proc/cpuinfo | tail -1
```

* 전체 물리 코어 개수 : (물리 CPU 수) X (CPU당 물리 코어 개수)
* 전체 가상 코어 개수 : (전체 물리 코어 개수) X 2
  * 일반적인 경우, 하이퍼스레딩에 의해 OS에서 코어 수가 실제 코어 수의 2배로 인식한다.
