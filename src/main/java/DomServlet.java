import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "Dom", urlPatterns = "/doma.json")
public class DomServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=UTF-8");
        Connection connection = DatabaseConnect.getConnection();
        String streetId = req.getParameter("streetId");
        try (Statement statement1 = connection.createStatement()) {
            ResultSet resultSet1 = statement1.executeQuery("SELECT ID_House, House FROM base.doma where ID_Street=" + streetId + ";");
            JSONObject json = new JSONObject();
            while (resultSet1.next()) {
                String id = resultSet1.getString(1);
                String text = resultSet1.getString(2).trim();
                json.put(id, text);
            }
            PrintWriter out = resp.getWriter();
            out.print(json.toString());
            out.flush();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
