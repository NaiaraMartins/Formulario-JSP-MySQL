    <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
	<jsp:useBean id="con" class="conexao_cargo.Conexao_cargo"/>  
    <html>  
    <head>  
    <title>Listar Cargo</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="cargo.jsp">  
     
  <p><strong>Tabela Cargo </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       ID  
    </strong></td>      
    <td width=200><strong>  
       Nome  
    </strong></td>      
    <td width=100><strong>  
       Funcao  
    </strong></td>  
    </tr>   
     
     
   <%      
      try {  
         con.setConsulta();  
         ResultSet temp = con.getResultado();  
           
		while (temp.next()){  
          %>  
             <tr>  
                 <td width=200>  
                   <%out.print(temp.getString("idcargo"));%>  
                </td>  
                 <td width=50>  
                   <%out.print(temp.getString("nomecargo"));%>  
                </td>  
                 <td width=30>  
                   <%out.print(temp.getString("funcao"));%>  
                </td>  
             </tr>  
          <%}  
        
      }catch (Exception e) {  
         e.printStackTrace();  
      }  
        
   %>  
   </table>  
     <p>  
       <input type="submit" name="Submit" value="voltar">  
   </p>  
   </form>  
   </body>  
   </html>  