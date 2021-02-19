public class MemoryTest {

	private static Logger _logger1 = Logger.getLogger(MemoryTest.class);
	
	public static void main(String[] args) {
		
		long beforeTime = System.currentTimeMillis();
		reportPerformanceFor("start", beforeTime);
		
    memoryTestCode();
    
		reportPerformanceFor("method", beforeTime);
		
		try{
			System.in.read();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
	public static void memoryTestCode(){
    
    // 메모리 성능 측정할 코드 작성
		_logger1.debug("log4j debug level");
	}
	
	public static void reportPerformanceFor(String msg, long refTime){
		
		double time = (System.currentTimeMillis()-refTime)/1000;
		double mem = usedMemory()/(1024.0*1024.0);
		mem = Math.round(mem*100)/100.0;
		System.out.println(msg + "(" + time + "sec, " + mem + "MB)");
	}
	
	public static long usedMemory(){
		Runtime rt = Runtime.getRuntime();
		return rt.totalMemory()-rt.freeMemory();
	}
}
