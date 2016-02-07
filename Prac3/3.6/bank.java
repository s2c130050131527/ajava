import java.util.*; 
import java.sql.*;  
public class bank{  
static final String JDBC_DRIVER = "org.postgresql.Driver";
static final String DB_URL = "jdbc:postgresql://127.0.0.1:5433/s2c130050131527";
static final String USER = "postgres";
static final String PASS = "shrey97266"; 
public static void main(String args[]){  
int n;
int actno; 
int balance; 
String phone;
String name; 
String address;  
Scanner sc=new Scanner(System.in); 
Connection conn=null; 
try{
	conn = DriverManager.getConnection(DB_URL, USER, PASS);	
	Statement stmt=conn.createStatement(); 
	System.out.println("Connected to the database\nEnroll No:130050131527");  
	
	do{ 
		System.out.println("Enter your choice \n1.Insertion 2.Updation 3.Deletion 4.View 5.Exit"); 
		n=sc.nextInt();  
		switch(n){ 
		case 1:   
		try{ 
			System.out.println("how many entries you want to insert?");
			int n1=sc.nextInt();
			for(int i=0;i<n1;i++)
				{
				System.out.println("\nEntry No "+i);
				System.out.println("Enter the account number:"); 
				actno=sc.nextInt(); 
				System.out.println("Enter the Customer name:"); 
				name=sc.next(); 
				System.out.println("Enter the balance:"); 
				balance=sc.nextInt(); 
				System.out.println("Enter the Phone number:"); 
				phone=sc.next(); 
				System.out.println("Enter the address:"); 
				address=sc.next(); 
				stmt.executeUpdate("Insert into bank values("+actno+",'"+name+"',"+balance+","+phone+",'"+address+"');") ;  
				System.out.println("Row Inserted"); 	
				}
			} 
		catch(SQLException se)
			{ 
			System.out.println("Account exist"); 
			} 
		break;  
		case 2:   
		try{ 
			System.out.println("Enter the account number:"); 
			actno=sc.nextInt(); 
			System.out.println("Enter the Customer name:"); 
			name=sc.next(); 
			System.out.println("Enter the balance:"); 
			balance=sc.nextInt(); 
			System.out.println("Enter the Phone number:"); 
			phone=sc.next(); 
			System.out.println("Enter the address:"); 
			address=sc.next(); 
			stmt.executeUpdate("update bank set name='"+name+"',balance="+balance+",phone="+phone+",address='"+address+"' where actno="+actno+";"); 
			System.out.println("Row Updated"); 
			} 
		catch(SQLException se)
			{ 	
			System.out.println(se); 
			} 
		break;  
		case 3:   
		try{ 
			System.out.println("Enter the account number:"); 
			actno=sc.nextInt(); 
			stmt.executeUpdate("delete from bank where actno="+actno+";");   
			System.out.println("Row Deleted"); 
			} 
		catch(SQLException se)
			{ 
			System.out.println("Account number doesnot exist"); 
			} 
		break;  
		case 4:   
		try{ 
			System.out.println("Enter Balance:"); 
			balance=sc.nextInt(); 
			ResultSet rs=stmt.executeQuery("Select * from bank where balance >="+balance+";");  
			while(rs.next())
				{ 
				actno=rs.getInt("actno"); 
				name=rs.getString("name"); 
				balance=rs.getInt("balance"); 
				phone=rs.getString("phone"); 
				address=rs.getString("address"); 
				System.out.print("Account Number:"+actno); 
				System.out.print("\tName:"+name); 
				System.out.print("\tBalance:"+balance); 
				System.out.print("\tPhone Number:"+phone); 
				System.out.print("\tAddress:"+address); 
				System.out.println(); 
				} 
			} 
			catch(SQLException se)
				{ 
				System.out.println(se); 
				} 
			break; 
			case 5:
			System.out.println("Exiting..");
			break;
			default:
			System.out.println("Invalid Choice");
			} 
		}while(n!=5); 
	}
	catch(SQLException se)
		{
		System.out.println(se); 
		} 
	}	 
} 