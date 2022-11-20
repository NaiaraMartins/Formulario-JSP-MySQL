 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_loja.Conexao_loja"/>  
 <html>  
 <head>  
 <title>Excluir</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="loja.jsp">  
   
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
            
       <td width=50><strong>  
          CNPJ
       </strong></td>
            <td width=100><strong>  
           Email
        </strong></td> 
               
       </tr> 
   
 <%      
    try {  
   
       con.setIdloja(Integer.parseInt(request.getParameter("idlojaField"))); 
   
       if (con.excluirDados())  
       {  
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
           <td width=100>  
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
       }  
       else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/loja.jsp?status=Registro nao encontrado");  
       }     
    }catch (Exception e) {  
       e.printStackTrace();  
    }  
   
            
 %>  
 </table>  
   <p> </p>  
   <p>  
     <input type="submit" name="Submit" value="voltar">  
     </p>  
   <p><strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("nomeField")%> foi excluido com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 