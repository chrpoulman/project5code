package Context;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class myContextListener implements ServletContextListener {
    private static int count=0;
    private static String serverInfo=null,servletContextName=null;
    private static int majorVersion, minorVersion;
   
    public static String getServerInfo(){
        return serverInfo;
    }
    public static String getServletContextName(){
        return serverInfo;
    }
    public static int getCount(){
        return count;
    }
    public static int getMajorVersion(){
        return majorVersion;
    }
    public static int getMinorVersion(){
        return minorVersion;
    }
    
    @Override
    
    public void contextInitialized(ServletContextEvent sce) {
        count++;
        ServletContext context=sce.getServletContext();
        serverInfo=context.getServerInfo();
        servletContextName=context.getServletContextName();        
        majorVersion=context.getMajorVersion();
        minorVersion=context.getMinorVersion();
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        count--;
    }
}
