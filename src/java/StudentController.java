import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student/")
public class StudentController extends HttpServlet{

    @Autowired
    ServletContext application;
@RequestMapping("index")
    public String index(HttpServletRequest request, HttpSession session) {
        application.setAttribute("name", "Phạm Minh Tuấn");
        application.setAttribute("level", 2);

        session.setAttribute("name", "Nguyễn Thị Kiều Oanh");
        session.setAttribute("level", 4);

        request.setAttribute("name", "Lê Phạm Tuấn Kiệt");
        request.setAttribute("level", 3);

        session.setAttribute("salary", 1000);
        request.setAttribute("photo", "images/poly-sv.png");

        return "student/index";
    }
}
