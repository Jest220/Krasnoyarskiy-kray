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

@WebServlet(name = "District", urlPatterns = "/districts.json")
public class DistrictServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=UTF-8");
        Connection connection = DatabaseConnect.getConnection();
        try (Statement statement1 = connection.createStatement();) {
            ResultSet resultSet1 = statement1.executeQuery("select ID_District, District, ID_Type_Dist from base.District");

            Statement statement2 = connection.createStatement();
            ResultSet resultSet2;

            JSONObject json = new JSONObject();
            while (resultSet1.next()) {
                resultSet2 = statement2.executeQuery("SELECT TypeDist FROM base.typedist where ID_Type_Dist=" + resultSet1.getInt(3) + ";");
                resultSet2.next();
                json.put(String.valueOf(resultSet1.getInt(1)), resultSet2.getString(1).trim() + " " + resultSet1.getString(2).trim());
            }
            PrintWriter out = resp.getWriter();
            out.print(json.toString());
            out.flush();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
