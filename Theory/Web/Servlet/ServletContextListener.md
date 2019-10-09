
* 웹 컨테이너는 웹 어플리케이션(컨텍스트)이 시작하거나 종료되는 시점에 특정 클래스의 메서드를 실행할 수 있는 기능 제공
  -> ServletContextListener

### ServletContextListener
* 인터페이스
  * contextInitialized(ServletContextEvent sce)
  * contextDestroyed(ServletContextEvent sce)
    -> 이 2가지는 꼭 정의해야 한다.
    * 두개의 메서드는 모두 파라미터로 javax.servlet.ServletContextEvent 타입의 객체 사용

* ServletContextListener 인터페이스를 구현한 클래스를 실행하려면 web.xml 파일에 <listener> 태그와 <listener-class> 태그를
사용해서 완전한 클래스 이름을 명시하면 된다(완전한 = 패키지명+클래스명)

* <listener> 태그를 한 개 이상 등록할 수 있다.
* 각 <listener> 태그는 반드시 한 개의 <listener-class> 태그를 자식 태그로 가져야 한다.
* <listener>가 1개 이상일 경우, contextInitialized() 메ㅓ드는 등록된 순서대로 실행, contextDestroyed() 메서드는 등록된 반대 순서대로 실행

* public ServletContextEvent getServletContext()
  * JSP의 application 기본 객체와 동일한 ServletConext 객체 리턴
  * ServletContext 객체를 이용하여 web.xml 파일에 설정된 컨텍스트 초기화 파라미터를 부를 수 있다.
    * <context-param> 태그 이용하여 web.xml에 설정

```xml
<listener>
  <listener-class>com.mia.DBInitListener</listener-class>
</listener>

<context-param>
  <param-name>config</param-name>
  <param-value>
      jdbcdriver=com.mysql.jdbc.Driver
  </param-value>
</context-param>

//context-param을 두개이상 둘 수 있나?
```

### ServletContext 메서드
  * getInitParameter(String name)
  * Enumeration<String> getInitParameterNames()

* contestInitialized() 메서드에는 throws가 정의되어 있지 않다. checked exception이 지정되어 있지 않다.
  -> exception을 발생시키려면 RuntimeException이나 그 하위 타입의 익셉션을 발생시켜야 한다.

##### checked vs. unchecked exception
* checked : 컴파일 시 체크되는 exception, 컴파일 전 예측 가능
  * checked exception을 발생시킬 수 있는 메서드를 사용할 경우 반드시 throws를 통해 예외를 던지거나 try-catch문을 통해 예외를 반드시 처리해야 한다.
  * Exception(RuntimeException 제외한) ...
* Unchecked : 컴파일 시 체크되지 않으며, 프로그램 실행 도중 발생하는 예외, 예측 불가능
  * unchecked exception을 발생시킬 수 있는 메서드를 사용할 경우에는 반드시 예외를 처리해주어야 할 강제성이 없다.
  (단, 예외 처리를 하지 않은 상태에서 예외가 발생한다면 오류를 뱉어내며 프로그램이 비정상 종료한다.)
  * RuntimeException, Error ...

* 참고
https://m.blog.naver.com/PostView.nhn?blogId=mk1126sj&logNo=220976674605&proxyReferer=https%3A%2F%2Fwww.google.com%2F



* 서블릿 3.0 부터는 web.xml에 등록하지 않고 @WebListner annotation 이용하여 리스너로 등록 가능
