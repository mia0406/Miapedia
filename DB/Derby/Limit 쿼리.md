Derby DB를 열어서 limit을 걸어서 확인하고 싶었는데 계속 syntax error가 걸려서 뭔가 했다. 찾아서 해보니 derby에서는 limit 쿼리를 할 때 진짜
문법이 아예 달랐음;;;;

```sql
select * from employee fetch first 10 rows only;
```

* ROW_NUMBER 기능도 있지만, 공식 문서에서 살펴보면 ROW_NUMBER는 where절에서는 사용할 수 없는 등 조건들이 많이 걸려있는 것 같다.


### offset / fetch
* offset 
  * 첫번째부터 N번째 줄까지 skip하게 해준다. 
  * syntax
    ```sql
    OFFSET { integerLiterl | ? } { ROW | ROWS }
    ```
* fetch 
   * 다른 데이터베이스의 "LIMIT" 기능과 동일
   * syntax
    ```sql
    FETCH { FIRST | NEXT } [ integerLiterl | ? ] { ROW | ROWS } ONLY
    ```
* 예시
  ```sql
  SELECT * FROM employee fetch first 10 rows only;

  select * from employee OFFSET 4 ROWS;
  
  SELECT * FROM T ORDER BY I OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY
  ```


#### 참고 자료.
https://razorsql.com/articles/derby_limit_rows.html  
https://db.apache.org/derby/docs/10.13/ref/rrefsqljoffsetfetch.html
