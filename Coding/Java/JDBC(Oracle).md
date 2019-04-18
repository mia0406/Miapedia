
## JDBC(Oracle) 기본 6단계
1. 드라이버 로딩
```java
Class.forName("oracle.jdbc.driver.OracleDriver");
```
2. DB 연결
```java
Connection conn = null;

conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger");
```
3. 쿼리 준비
```java
PreparedStatement pstmt = null;
String query = "SELECT * FROM table";

pstmt = conn.prepareStatement(query);
```
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
