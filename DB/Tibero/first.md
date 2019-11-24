1. sys 계정 접속
tbsql sys
- 이후 비밀번호 입력하여 접속

2. 사용자 계정 생성
```
create user [사용자아이디] identified by [비밀번호];
```

3. 생성된 사용자에게 권한 부여
```
grant connect to [사용자];
grant resource to [사용자];
```

4. 새로운 계정으로 접속
```
conn [사용자 ID];
```

5. 테이블 생성
```
CREATE TABLE [테이블 이름] ();
```
