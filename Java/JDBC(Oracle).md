
## JDBC 기본 6단계
1. 드라이버 로딩
```java
Class.forName("oracle.jdbc.driver.OracleDriver");
```
* 이 문장은 try-catch문으로 감싸주어야 한다.

2. DB 연결
```java
Connection conn = null;

conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger");
```
* getConnection을 통해서 DB와 연결
* 이 부분은 SQLExcpetion에 대한 예외 처리(try-catch)로 감싸주어야 한다.

3. 쿼리 준비
```java
PreparedStatement pstmt = null;
String query = "SELECT * FROM table";

pstmt = conn.prepareStatement(query);
```
* 실제로 쿼리를 실행하기 전에 DB 쿼리를 준비하는 단계

4. 쿼리 실행, 데이터 가져오기
```java
ResultSet rs = null;

rs=pstmt.executeQuery();
```

5. 결과값 출력
```java
while(rs.next()) {
				System.out.println("name: " + rs.getString("NAME"));
				System.out.println("age: " + rs.getString("AGE"));
				System.out.println("game: " + rs.getString("GAME"));
				System.out.println("--------");
}
```
* rs.next()를 이용해서 한 줄씩 읽어들임

6. Connection 닫기
```java
try {
  if(rs != null) {
    rs.close();
	}

  if(pstmt != null) {
    pstmt.close();
	}

	if(conn != null) {
    conn.close();
	}
} catch(Exception e) {
  e.printStackTrace();
}
````
* 닫을 때는 열었던 순서의 반대로 닫아주어야 한다.
* 닫을 때는 꼭! null이 아닌지를 확인한 뒤에 받게 하도록 만들자.
