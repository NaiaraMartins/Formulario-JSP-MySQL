    <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
	<jsp:useBean id="con" class="conexao_departamento.Conexao_departamento"/>  
    <html>  
    <head>  
    <title>Listar Departamento</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="departamento.jsp">  
     
  <p><strong>Tabela Departamento </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
        <td width=50><strong>  
          ID 
       </strong></td>      
       <td width=200><strong>  
          Endereco 
       </strong></td>     
       <td width=200><strong>  
          Nome do Departamento
       </strong></td>   	
       </tr>   
     
     
   <%      
      try {  
         con.setConsulta();  
         ResultSet temp = con.getResultado();  
           
		while (temp.next()){  
          %>  
          <tr>  
            <td width=50>  
                 <%out.print(temp.getString("iddepartamento"));%>  
           </td>  
            <td width=200>  
                 <%out.print(temp.getString("endereco"));%>  
           </td>  
           <td width=200>  
                 <%out.print(temp.getString("nomedepartamento"));%>  
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