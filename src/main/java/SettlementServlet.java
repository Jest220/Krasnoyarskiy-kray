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

@WebServlet(name = "Settlement", urlPatterns = "/settlements.json")
public class SettlementServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=UTF-8");
        Connection connection = DatabaseConnect.getConnection();
        String id = req.getParameter("id");
        try (Statement statement1 = connection.createStatement();) {
            ResultSet resultSet1 = statement1.executeQuery("select ID_Settlement, Settlement, ID_Type_Settlement from base.Settlement where ID_District=" + id);

            Statement statement2 = connection.createStatement();
            ResultSet resultSet2;

            JSONObject json = new JSONObject();

            while (resultSet1.next()) {
                resultSet2 = statement2.executeQuery("select TypeSettlement from base.TypeSettlement where ID_TypeSettlement=" + resultSet1.getInt(3) + ";");
                resultSet2.next();
                json.put(resultSet1.getString(1), resultSet2.getString(1).trim() + " " + resultSet1.getString(2).trim());
            }

            PrintWriter out = resp.getWriter();
            out.print(json.toString());
            out.flush();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
