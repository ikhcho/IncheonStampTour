<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.net.URL" %>
<%@ page import="javax.xml.parsers.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Treasure_Parsing</title>
<body>
<%
String query = new String ();
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
PreparedStatement pstmt = null;
try{
	Class.forName("org.gjt.mm.mysql.Driver");
   } catch (ClassNotFoundException e) {
     out.println(e);
   }

try
{
	conn= DriverManager.getConnection("jdbc:mysql://localhost/stamptour?useUnicode=true&characterEncoding=euckr","root","admin");
	stmt = conn.createStatement();
	
     //DOM Document ��ü �����ϱ� ���� �޼��� 
     DocumentBuilderFactory f 
      = DocumentBuilderFactory.newInstance();
     //DOM �ļ��κ��� �Է¹��� ������ �Ľ��ϵ��� ��û
     DocumentBuilder parser = f.newDocumentBuilder();
	     //XML ���� ����
	 for(int pageNum=1; pageNum<=5; pageNum++)
	 {
		 
	     String url = "http://iq.ifac.or.kr/openAPI/real/search.php?svID=treasure&apiKey=qBRwAGucHreDtzLP2b386ZfU1W4NX7&resultType=xml&pSize=50&cPage=";
	     url+= pageNum;
	     
	     Document xmlDoc = null; 
	     //DOM �ļ��κ��� �Է¹��� ������ �Ľ��ϵ��� ��û 
	     xmlDoc = parser.parse(url);
	     
	     //��Ʈ ������Ʈ ���� 
	     Element root = xmlDoc.getDocumentElement();
	     
	     //���� ������Ʈ ����
	     NodeList n1 = root.getElementsByTagName("item");
	     int length = n1.getLength();
		 int n=0;
	     String node[] = {"idx", "title", "link", "region", "gubun", "number", "date", "qty", "admin", "location", "poster", "description", "pubDate"};
		 String nodeName = "";
		 String[] tmp = new String[13];
	    
		 
	     for(int i=0; i<length; i++) {
	         Node itemNode = n1.item(i);
	         
	         NodeList bookChildNodes = itemNode.getChildNodes();
	         for(int k=0; k<bookChildNodes.getLength(); k++) {
	             Node bookChild = bookChildNodes.item(k);
	             
	             if(bookChild.getNodeType() == Node.ELEMENT_NODE ) {
	                 // author ����� �� : ȫ�浿 ���
	                
	                nodeName = node[n];
	             	out.println(nodeName);
	             	tmp[n] = bookChild.getChildNodes().item(0).getNodeValue();
	             	out.println(tmp[n]);
	             	n++;
	             }
	         }
	         query = "insert into treasure values( ?,?,?,?,?,?,?,?,?,?,?,?,?)";
			 pstmt = conn.prepareStatement(query);
			 for(n=1; n<=13;n++) pstmt.setString(n,tmp[n-1]);
			 pstmt.executeUpdate();
			 n=0;
	     }
	 }
	} 
     catch(Exception e) {
	    System.out.println(e.toString());
	    }

%>
</body>
</html>



