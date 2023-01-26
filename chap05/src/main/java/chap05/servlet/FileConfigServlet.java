package chap05.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FileConfigServlet extends HttpServlet{
	
	//ServletContext application = req.getServletContext();
	//JSP 웹프로젝트로 File을 다룰 때는 getRealPath()를 사용해야 한다.
	//File f = new File(req.getServletContext().getRealPath("/"));
	// C:\JavaAWS\jsp-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\chap05\ 
	//이 주소를 탐색기에 쳐보면 보이는 그 공간에서 지금 우리가 작업하고 있는 거
	
	
	Map<String, String> servletFileConfig = new HashMap<>();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		String servletConfigPath = config.getInitParameter("servlet-config");
		
		File root = new File(config.getServletContext().getRealPath("/"));
		File sevletConfigFile = new File(root, servletConfigPath);
		
		
		
		try(	FileReader fin = new FileReader(sevletConfigFile);
				BufferedReader in = new BufferedReader(fin);//버퍼리더는 한줄씩 읽어들일 수 있음
		) {	
			String line = null;
			while((line = in.readLine()) != null ) {
				String[] keyAndValue = line.split("=");
				servletFileConfig.put(keyAndValue[0] , keyAndValue[1]); 
				//ex. user는 key로 들어가고 "hr"은 value로 servletFileConfig 맵에 들어가겠지
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(servletFileConfig);
		System.out.println(servletFileConfig.get("user"));
		System.out.println(servletFileConfig.get("password"));
		System.out.println(servletFileConfig.get("resource"));
		//파일 내용들이 출력됨
	}
	
	
}
