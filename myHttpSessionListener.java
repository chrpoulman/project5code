package Session;
import javax.servlet.http.*;



public class myHttpSessionListener implements HttpSessionListener {
    static private int activesses=0;
    static private String sessionId;
    static private long sessionStart,lastAccess;
    static private int maxInactiveInterval;
    
    public static String getSessionId(){
        return sessionId;
    
    }
    public static int getSessionsNum(){
        return activesses;
    }
    
    public static long getSessionStart(){
    return sessionStart;
    }
    
    public static long getSessionLastAccess(){
    return lastAccess;
    }
    
    //public static int getSessioniMaxInactiveInterval(){
    //return maxInactiveInterval;
    //}
    
    @Override
    public synchronized void sessionCreated(HttpSessionEvent se) {
        activesses++;
        HttpSession session = se.getSession();
        sessionId=session.getId();
        sessionStart=session.getCreationTime();
        lastAccess=session.getLastAccessedTime();
     //   maxInactiveInterval=session.getMaxInactiveInterval();
        
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        activesses--;
    }
}
