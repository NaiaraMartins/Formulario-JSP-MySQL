<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_produto.Conexao_produto"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 
 <html>  
 <head>  
 <title>Alterar Produto</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="produto.jsp">  
   
 <jsp:setProperty name="con" property="idproduto" value='<%=Integer.parseInt(request.getParameter("idprodutoField"))%>'/>  
 <jsp:setProperty name="con" property="nomeproduto" value='<%=(request.getParameter("nomeprodutoField"))%>'/>
 <jsp:setProperty name="con" property="peso" value='<%=Double.parseDouble(request.getParameter("pesoField"))%>'/>
 <jsp:setProperty name="con" property="marca" value='<%=(request.getParameter("marcaField"))%>'/>
 <jsp:setProperty name="con" property="valorunit" value='<%=Double.parseDouble(request.getParameter("valorunitField"))%>'/>
 
 
 <p><strong>Tabela Produto </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       ID 
    </strong></td> 
	<td width=200><strong>  
       Nome Produto
    </strong></td> 
	<td width=200><strong>  
       Peso  
    </strong></td>
	<td width=200><strong>  
       Marca  
    </strong></td>     
	<td width=200><strong>  
       Valor Unitario 
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
		  <td width=200>  
                <%out.print(temp.getString("valorunit"));%>  
		  </td> 	
			          		  
       </tr>  
       
	<%}  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/produto.jsp?status=Registro nao encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("idprodutoField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 