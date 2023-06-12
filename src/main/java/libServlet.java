

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/lib.do")
public class libServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		

		String command = request.getParameter("command");
		
		if(command.equals("list")) {
			response.sendRedirect("Wifi2.jsp");
		} else if (command.equals("listdb")) {
				//dao.delete();
				
				String[] WifiList = request.getParameterValues("lib");
				
				ArrayList<WifiInfoDto> dtos = new ArrayList<WifiInfoDto>();
				
				for(int i = 0; i < WifiList.length; i++) {
					String[] tmp = WifiList[i].split("/");
					
					WifiInfoDto dto = new WifiInfoDto(tmp[0],tmp[1],tmp[2],tmp[3],tmp[4],tmp[5],tmp[6],tmp[7],tmp[8],tmp[9],tmp[10],tmp[11],tmp[12],tmp[13],tmp[14],tmp[15]);
					
					dtos.add(dto);
				}
				
				int res = dao.insert(dtos);
				
				if(res == dtos.size()) {
					jsResponse("db저장 성공", "lib.do?command=list", response);
				} else {
					jsResponse("db저장 실패", "lib.do?command=list", response);
				}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {
		String alert = "<script type = 'text/javascript'>" +
						"alert('" + msg + "');" +
						"location.href='" + url + "';" +
						"</script>";
		PrintWriter out = response.getWriter();
		out.print(alert);
				
	}
}
