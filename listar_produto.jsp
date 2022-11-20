    <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
	<jsp:useBean id="con" class="conexao_produto.Conexao_produto"/>  
    <html>  
    <head>  
    <title>Listar Produto </title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="produto.jsp">  
     
  <p><strong>Tabela Produto </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
        <td width=50><strong>  
          ID 
       </strong></td> 
       
       <td width=200><strong>  
           Nome do Produto
        </strong></td>
        <td width=100><strong>  
          Peso
        </strong></td>    
            
       <td width=200><strong>  
          Marca
       </strong></td>
       <td width=100><strong>  
           Valor Unitario
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
                 <%out.print(temp.getString("idproduto"));%>  
           </td> 
           <td width=200>  
             <%out.print(temp.getString("nomeproduto"));%>  
           </td>  
            <td width=200>  
                 <%out.print(temp.getString("peso"));%>  
           </td>  
           <td width=200>  
             <%out.print(temp.getString("marca"));%>  
           </td> 
                    
           <td width=50>  
                 <%out.print(temp.getString("valorunit"));%>  
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