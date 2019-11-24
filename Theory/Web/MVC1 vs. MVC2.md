

## Model / View / Controller
* Model : 프로그램의 내부 상태 , 프로그램의 정보
* Controller : 데이터와 비즈니스 로직 간의 상호작용
* View :  사용자의 인터페이스    

### MVC1 (model 1)
* 브라우저에서 요청을 하면 그 요청(request)가 가장 먼저 들어오는 곳은 JSP이다.
* JSP에서 비즈니스 로직, VIEW 모든 것을 처리
* 모델은 JDBC 인터페이스를 통해 DB 조작 및 DB 정보를 담기 위한 Class를 정의하여 구성(Java로 구현)



### MVC2 (model 2)
* 비즈니스 로직을 처리하는 서블릿을 완전히 분리시켜서 VIEW단과 로직을 처리하는 단을 분리
* 서블릿단에서 비즈니스로직, JSP에서 view을 처리
* 전체적은 흐름은 controller가 통제하는 구조
* Controller : 사용자 요청을 받아 모델로 보낸 후, 모델에게 받은 결과를 View로 보내서 사용자에게 응답
* 모델은 MVC1과 동일하나, Viw는 JSP로 구현되며 내부에 java가 아닌 JSTL을 이용하여 전달 받는 결과를 표현



### 참고
https://ha0programming.tistory.com/23 [즐거운개발]
https://m.blog.naver.com/PostView.nhn?blogId=koliaok&logNo=220566166684&proxyReferer=https%3A%2F%2Fwww.google.com%2F
