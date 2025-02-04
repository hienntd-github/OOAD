package connection;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private final String serverName = "MSI\\RUBIE";
	private final String dbName = "OFruit";
	private final String portNumber = "1433";
	private final String instance = "";
	private final String userID = "";
	private final String password = "";

public Connection getConnectionW() throws Exception {
	String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";integratedSecurity=true;databaseName=" + dbName + ";encrtypt=true;trustServerCertificate=true;sslProtocol=TLSv1.2";
	if (instance == null || instance.trim().isEmpty())
	{
		url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";integratedSecurity=true;databaseName=" + dbName + ";encrtypt=true;trustServerCertificate=true;sslProtocol=TLSv1.2";
	}
	//DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	return DriverManager.getConnection(url, userID, password);
}

//String dbURL = "jdbc:sqlserver://localhost\\sqlexpress;user=sa;password=secret";

public static void main(String[] args) {
	try {
		System.out.println(new DBConnection().getConnectionW());
	} 
	catch (Exception e) {
		e.printStackTrace();
	}
}
}