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
	
     //DOM Document 객체 생성하기 위한 메서드 
     DocumentBuilderFactory f 
      = DocumentBuilderFactory.newInstance();
     //DOM 파서로부터 입력받은 파일을 파싱하도록 요청
     DocumentBuilder parser = f.newDocumentBuilder();
	     //XML 파일 지정
	 for(int pageNum=1; pageNum<=5; pageNum++)
	 {
		 
	     String url = "http://iq.ifac.or.kr/openAPI/real/search.php?svID=treasure&apiKey=qBRwAGucHreDtzLP2b386ZfU1W4NX7&resultType=xml&pSize=50&cPage=";
	     url+= pageNum;
	     
	     Document xmlDoc = null; 
	     //DOM 파서로부터 입력받은 파일을 파싱하도록 요청 
	     xmlDoc = parser.parse(url);
	     
	     //루트 엘리먼트 접근 
	     Element root = xmlDoc.getDocumentElement();
	     
	     //하위 엘리먼트 접근
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
	                 // author 노드의 값 : 홍길동 출력
	                
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



