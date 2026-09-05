import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.mindrot.jbcrypt.BCrypt;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {

    private static final String URL =
            "jdbc:mysql://127.0.0.1:3306/dharshinmart";

    private static final String USER = "root";
    private static final String PASSWORD = "252007";

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username == null || username.trim().isEmpty()
                || password == null || password.trim().isEmpty()) {

            showMessage(
                    response,
                    "Signup Required",
                    "Please enter a username and password.",
                    false
            );
            return;
        }

        username = username.trim();

        String passwordHash =
                BCrypt.hashpw(password, BCrypt.gensalt());

        String sql =
                "INSERT INTO users (name, username, password_hash, role) " +
                "VALUES (?, ?, ?, 'BUYER')";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection connection =
                         DriverManager.getConnection(URL, USER, PASSWORD);
                 PreparedStatement statement =
                         connection.prepareStatement(sql)) {

                statement.setString(1, username);
                statement.setString(2, username);
                statement.setString(3, passwordHash);

                statement.executeUpdate();
            }

            showMessage(
                    response,
                    "Signup Successful",
                    "Your account has been created successfully.",
                    true
            );

        } catch (SQLException e) {

            e.printStackTrace();

            if ("23000".equals(e.getSQLState())) {

                showMessage(
                        response,
                        "Account Already Exists",
                        "This username is already registered. Please choose another username.",
                        false
                );

            } else {

                showMessage(
                        response,
                        "Signup Unavailable",
                        "We could not create your account right now.",
                        false
                );
            }

        } catch (ClassNotFoundException e) {

            e.printStackTrace();

            showMessage(
                    response,
                    "System Error",
                    "The database driver could not be loaded.",
                    false
            );

        } catch (Exception e) {

            e.printStackTrace();

            showMessage(
                    response,
                    "Signup Unavailable",
                    "Something went wrong. Please try again.",
                    false
            );
        }
    }

    private void showMessage(HttpServletResponse response,
                             String title,
                             String message,
                             boolean success)
            throws IOException {

        String symbol = success ? "✓" : "X";

        response.getWriter().println(
                "<!DOCTYPE html>" +
                "<html>" +
                "<head>" +
                "<meta charset='UTF-8'>" +
                "<meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
                "<title>DharshinMart | " + title + "</title>" +

                "<style>" +
                "*{box-sizing:border-box;font-family:Arial,sans-serif;}" +

                "body{" +
                "margin:0;" +
                "min-height:100vh;" +
                "display:flex;" +
                "justify-content:center;" +
                "align-items:center;" +
                "background:#f4f6f9;" +
                "}" +

                ".message-box{" +
                "width:440px;" +
                "padding:50px 40px;" +
                "background:#fff;" +
                "border-radius:16px;" +
                "box-shadow:0 12px 35px rgba(0,0,0,.12);" +
                "text-align:center;" +
                "}" +

                ".symbol{" +
                "width:70px;" +
                "height:70px;" +
                "margin:0 auto 22px;" +
                "border-radius:50%;" +
                "background:#2563eb;" +
                "color:#fff;" +
                "display:flex;" +
                "justify-content:center;" +
                "align-items:center;" +
                "font-size:36px;" +
                "font-weight:bold;" +
                "}" +

                "h1{" +
                "margin:0 0 14px;" +
                "font-size:28px;" +
                "color:#1f2937;" +
                "}" +

                "p{" +
                "margin:0 0 30px;" +
                "font-size:16px;" +
                "line-height:1.6;" +
                "color:#6b7280;" +
                "}" +

                ".dots{" +
                "font-size:18px;" +
                "letter-spacing:5px;" +
                "color:#9ca3af;" +
                "margin-bottom:25px;" +
                "}" +

                ".button{" +
                "display:inline-block;" +
                "padding:13px 28px;" +
                "background:#2563eb;" +
                "color:#fff;" +
                "text-decoration:none;" +
                "border-radius:9px;" +
                "font-size:15px;" +
                "font-weight:bold;" +
                "}" +

                ".button:hover{" +
                "background:#1d4ed8;" +
                "}" +

                "</style>" +
                "</head>" +

                "<body>" +

                "<div class='message-box'>" +

                "<div class='symbol'>" +
                symbol +
                "</div>" +

                "<h1>" +
                title +
                "</h1>" +

                "<p>" +
                message +
                "</p>" +

                "<div class='dots'>•••</div>" +

                "<a class='button' href='index.jsp'>" +
                "Back to Login" +
                "</a>" +

                "</div>" +

                "</body>" +
                "</html>"
        );
    }
}