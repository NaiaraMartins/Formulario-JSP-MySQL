    <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
	<jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>  
    <html>  
    <head>  
    <title>Listar Fornecedor</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="fornecedor.jsp">  
     
  <p><strong>Tabela Fornecedor </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
        <td width=50><strong>  
          ID 
       </strong></td> 
       <td width=200><strong>  
           Nome Fantasia
        </strong></td>
        <td width=100><strong>  
           Site
        </strong></td>
        <td width=50><strong>  
           Representante 
        </strong></td>     
       <td width=200><strong>  
          Endereco
       </strong></td>     
       <td width=200><strong>  
          CNPJ
       </strong></td>
       <td width=50><strong>  
           Data de Registro
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
                 <%out.print(temp.getString("idfornecedor"));%>  
           </td>  
            <td width=200>  
                 <%out.print(temp.getString("nomefantasia"));%>  
           </td>  
           <td width=200>  
             <%out.print(temp.getString("site"));%>  
           </td> 
           <td width=200>  
             <%out.print(temp.getString("representante"));%>  
           </td> 
           <td width=200>  
             <%out.print(temp.getString("endereco"));%>  
           </td> 
           <td width=50>  
                 <%out.print(temp.getString("cnpj"));%>  
           </td>  
           <td width=50>  
             <%out.print(temp.getString("dt_registro"));%>  
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