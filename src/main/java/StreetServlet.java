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

@WebServlet(name="Street", urlPatterns = "/streets.json")
public class StreetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=UTF-8");
        Connection connection = DatabaseConnect.getConnection();
        String districtId = req.getParameter("districtId");
        String settlementId = req.getParameter("settlementId");
        if (settlementId.isEmpty()) {
            try (Statement statement1 = connection.createStatement()) {
                ResultSet resultSet1 = statement1.executeQuery("SELECT ID_Street, Street, ID_TypeStreet FROM base.street where ID_Settlement is null and ID_District=" + districtId + ";");
                JSONObject json = new JSONObject();
                while (resultSet1.next()) {
                    String id = resultSet1.getString(1);
                    Statement statement2 = connection.createStatement();
                    ResultSet resultSet2 = statement2.executeQuery("SELECT TypeStreet from base.TypeStreet where ID_TypeStreet=" +
                            resultSet1.getInt(3) + ";");
                    resultSet2.next();
                    String text = resultSet2.getString(1).trim() + " " + resultSet1.getString(2).trim();
                    json.put(id, text);
                }
                PrintWriter out = resp.getWriter();
                out.print(json.toString());
                out.flush();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            try (Statement statement1 = connection.createStatement()) {
                ResultSet resultSet1 = statement1.executeQuery("SELECT ID_Street, Street, ID_TypeStreet FROM base.street where ID_Settlement=" +
                        settlementId + " and ID_District=" + districtId + ";");
                JSONObject json = new JSONObject();
                while (resultSet1.next()) {
                    String id = resultSet1.getString(1);
                    Statement statement2 = connection.createStatement();
                    ResultSet resultSet2 = statement2.executeQuery("SELECT TypeStreet from base.TypeStreet where ID_TypeStreet=" +
                            resultSet1.getInt(3) + ";");
                    resultSet2.next();
                    String text = resultSet2.getString(1).trim() + " " + resultSet1.getString(2).trim();
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
}
