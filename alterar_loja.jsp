<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_loja.Conexao_loja"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
 <html>  
 <head>  
 <title>Alterar Loja</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="loja.jsp">  
   
 <jsp:setProperty name="con" property="idloja"    value='<%=Integer.parseInt(request.getParameter("idlojaField"))%>'/>  
 <jsp:setProperty name="con" property="endereco"  value='<%=(request.getParameter("enderecoField"))%>'/>
 <jsp:setProperty name="con" property="nome"      value='<%=(request.getParameter("nomeField"))%>'/>
 <jsp:setProperty name="con" property="site"      value='<%=(request.getParameter("siteField"))%>'/>
 <jsp:setProperty name="con" property="cnpj"      value='<%=(request.getParameter("cnpjField"))%>'/> 
 <jsp:setProperty name="con" property="email"     value='<%=(request.getParameter("emailField"))%>'/>
   
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
	<td width=200><strong>  
       Site  
    </strong></td>     
	<td width=200><strong>  
       CNPJ 
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
		  <td width=200>  
                <%out.print(temp.getString("cnpj"));%>  
		  </td> 	
			<td width=200>  
                <%out.print(temp.getString("email"));%>  
          </td>  
		           		  
       </tr>  
	   
      <%}  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/alterar.jsp?status=Registro nao encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("nomeField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 
	