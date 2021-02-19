public class SpeedTest {

	private static Logger _logger1 = Logger.getLogger(SpeedTest.class);
	
	public static void main(String[] args) {
		
		long beforeTime = System.currentTimeMillis();
		
    // 실행속도 측정 코드 작성
		_logger1.debug("log4j debug level");	
		
		long afterTime = System.currentTimeMillis();
		long totalTime = (afterTime - beforeTime);
		
		System.out.println("시작 시간 = " + beforeTime);
		System.out.println("종료 시간 = " + afterTime);
		System.out.println("총 시간 = " + totalTime);
  }
}
