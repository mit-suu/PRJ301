public class DBUtils {

    private static final String SERVER_NAME = "localhost";
    private static final String DB_NAME = "BookstoreDB";
    private static final String PORT_NUMBER = "1433";
    private static final String INSTANCE_NAME = "SQLEXPRESS";
    private static final String USER_ID = "sa";
    private static final String PASSWORD = "hiepdzpr1";

    // 👉 Xuất URL ra public
    public static String getJdbcUrl() {
        return "jdbc:sqlserver://" + SERVER_NAME + "\\" + INSTANCE_NAME + ":" + PORT_NUMBER
                + ";databaseName=" + DB_NAME
                + ";encrypt=true;trustServerCertificate=true;";
    }

    // 👉 Xuất driver ra public
    public static String getDriver() {
        return "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    }

    public static String getUsername() {
        return USER_ID;
    }

    public static String getPassword() {
        return PASSWORD;
    }

    // Giữ lại getConnection() classic nếu cần
}