<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
 <html>  
 <head>  
 <title>Alterar Fornecedor</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="fornecedor.jsp">  
   
 <jsp:setProperty name="con" property="idfornecedor" value='<%=Integer.parseInt(request.getParameter("idfornecedorField"))%>'/>  
 <jsp:setProperty name="con" property="nomefantasia" value='<%=(request.getParameter("nomefantasiaField"))%>'/>
 <jsp:setProperty name="con" property="site" value='<%=(request.getParameter("siteField"))%>'/>   
 <jsp:setProperty name="con" property="representante" value='<%=(request.getParameter("representanteField"))%>'/>
 <jsp:setProperty name="con" property="endereco" value='<%=(request.getParameter("enderecoField"))%>'/>
 <jsp:setProperty name="con" property="cnpj" value='<%=(request.getParameter("cnpjField"))%>'/>
 <jsp:setProperty name="con" property="dt_registro" value='<%=(request.getParameter("dt_registroField"))%>'/>   
 <jsp:setProperty name="con" property="email" value='<%=(request.getParameter("emailField"))%>'/>
 
 <p><strong>Tabela Fornecedor </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       ID 
    </strong></td> 
	<td width=200><strong>  
       Nome Fantasia
    </strong></td> 
	<td width=200><strong>  
       Site  
    </strong></td>
	<td width=200><strong>  
       Representante  
    </strong></td>     
	<td width=200><strong>  
       Endereco  
    </strong></td>  
	<td width=200><strong>  
       CNPJ
    </strong></td> 
	<td width=200><strong>  
       Data do Registro
    </strong></td>     
	<td width=200><strong>  
       Email 
    </strong></td>     
	</tr>  
   
   <%      
     
  try {  
   
       boolean testa = con.alterarDados();  
                  
       if (con.alterarDados())  
       {           
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
			<td width=200>  
                <%out.print(temp.getString("cnpj"));%>  
          </td>  
		  <td width=200>  
                <%out.print(temp.getString("dt_registro"));%>  
          </td> 	
				<td width=200>  
                <%out.print(temp.getString("email"));%>  
          </td> 
		  
		  <%}  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/fornecedor.jsp?status=Registro nao encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("idfornecedorField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 
 