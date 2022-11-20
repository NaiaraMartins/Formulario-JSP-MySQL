    <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
	<jsp:useBean id="con" class="conexao_loja.Conexao_loja"/>  
    <html>  
    <head>  
    <title>Listar Loja</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="loja.jsp">  
     
  <p><strong>Tabela Loja </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
        <td width=50><strong>  
          ID 
       </strong></td> 
       <td width=200><strong>  
           Endereco
        </strong></td>
       <td width=200><strong>  
           Nome 
        </strong></td>
        <td width=100><strong>  
           Site
        </strong></td>    
            
       <td width=200><strong>  
          CNPJ
       </strong></td>
            <td width=100><strong>  
           Email
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
                 <%out.print(temp.getString("idloja"));%>  
           </td> 
           <td width=200>  
             <%out.print(temp.getString("endereco"));%>  
           </td>  
            <td width=200>  
                 <%out.print(temp.getString("nome"));%>  
           </td>  
           <td width=200>  
             <%out.print(temp.getString("site"));%>  
           </td> 
                    
           <td width=50>  
                 <%out.print(temp.getString("cnpj"));%>  
           </td>  
           
           <td width=100>  
             <%out.print(temp.getString("email"));%>  
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